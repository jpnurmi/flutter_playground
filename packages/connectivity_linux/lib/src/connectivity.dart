import 'dart:async';

import 'package:dbus/dbus.dart';

import 'connection.dart';
import 'device.dart';
import 'network_manager.dart';
import 'wireless_device.dart';

// ### NOTE: ethernet
enum ConnectivityResult { wifi, mobile, ethernet, none }

typedef DeviceGetter = Future<String> Function(NMDevice device);
typedef ConnectionGetter = Future<String> Function(NMConnection connection);

abstract class Connectivity {
  static Connectivity _instance;
  factory Connectivity() => _instance ??= ConnectivityLinux();

  Future<ConnectivityResult> checkConnectivity();
  Stream<ConnectivityResult> get onConnectivityChanged;
  Future<String> getWifiName();
  Future<String> getWifiBSSID();
  Future<String> getWifiIP();
}

class ConnectivityLinux implements Connectivity {
  @override
  Future<ConnectivityResult> checkConnectivity() async {
    final manager = _createManager();
    final connectivity = await _getConnectivity(manager);
    manager.client.close();
    return connectivity;
  }

  @override
  Future<String> getWifiName() {
    return _getConnectionValue((connection) => connection?.Id);
  }

  @override
  Future<String> getWifiIP() async {
    return _getDeviceValue(
        (device) async => (await device?.Ip4Address)?.toIP());
  }

  @override
  Future<String> getWifiBSSID() async {
    return _getDeviceValue((device) async {
      if (await device?.DeviceType != NMDeviceType.wifi) {
        return null;
      }
      final wireless = await _createWirelessDevice(device);
      return wireless.HwAddress;
    });
  }

  Future<String> _getConnectionValue(ConnectionGetter getter) async {
    final manager = _createManager();
    final connection = await _createConnection(manager);
    var value = await getter(connection);
    manager.client.close();
    return value;
  }

  Future<String> _getDeviceValue(DeviceGetter getter) async {
    return _getConnectionValue((connection) async {
      final device = await _createDevice(connection);
      return getter(device);
    });
  }

  NMDeviceType _connectivityDevice;
  NetworkManager _connectivityManager;
  StreamController<ConnectivityResult> _connectivityController;

  @override
  Stream<ConnectivityResult> get onConnectivityChanged {
    _connectivityController ??= StreamController<ConnectivityResult>.broadcast(
      onListen: _listenConnectivity,
      onCancel: _cancelConnectivity,
    );
    return _connectivityController.stream;
  }

  Future<ConnectivityResult> _getConnectivity(NetworkManager manager) async {
    final type = await manager.PrimaryConnectionType;
    if (type.isEmpty) {
      return ConnectivityResult.none;
    }
    if (type.contains('wireless')) {
      return ConnectivityResult.wifi;
    }
    if (type.contains('ethernet')) {
      return ConnectivityResult.ethernet;
    }
    // gsm, cdma, bluetooth, ...
    return ConnectivityResult.mobile;
  }

  void _listenConnectivity() {
    _connectivityManager ??= _createManager();
    _connectivityManager.subscribePropertiesChanged((_, changes, __) {
      if (changes.containsKey('PrimaryConnectionType')) {
        _updateConnectivity();
      }
    });
    _updateConnectivity();
  }

  void _updateConnectivity() async {
    final connectivity = await _getConnectivity(_connectivityManager);
    _connectivityController.add(connectivity);
  }

  void _cancelConnectivity() {
    _connectivityManager?.client?.close();
    _connectivityManager = null;
  }

  NetworkManager _createManager() => NetworkManager(DBusClient.system());

  Future<NMConnection> _createConnection(NetworkManager manager) async {
    final path = await manager.PrimaryConnection;
    if (path == '/') return null;
    return NMConnection(manager.client, path: DBusObjectPath(path));
  }

  Future<NMDevice> _createDevice(NMConnection connection) async {
    final devices = await connection?.Devices;
    if (devices?.isNotEmpty != true) return null;
    return NMDevice(connection.client, path: DBusObjectPath(devices.first));
  }

  NMWirelessDevice _createWirelessDevice(NMDevice device) {
    return NMWirelessDevice(device.client, path: device.path);
  }
}

class NMState {
  static const int unknown = 0;
  static const int asleep = 10;
  static const int disconnected = 20;
  static const int disconnecting = 30;
  static const int connecting = 40;
  static const int connectedLocal = 50;
  static const int connectedSite = 60;
  static const int connectedGlobal = 70;
}

class NMDeviceType {
  static const int unknown = 0;
  static const int ethernet = 1;
  static const int wifi = 2;
}

extension ToConnectivityResult on int {
  ConnectivityResult toConnectivityResult() {
    switch (this) {
      case NMDeviceType.wifi:
        return ConnectivityResult.wifi;
      case NMDeviceType.ethernet:
        return ConnectivityResult.ethernet;
      default:
        return ConnectivityResult.mobile;
    }
  }
}

extension ToIP on int {
  int byteAt(int i) => (this >> (i * 8)) & 0xff;
  String toIP() => '${byteAt(0)}.${byteAt(1)}.${byteAt(2)}.${byteAt(3)}';
}
