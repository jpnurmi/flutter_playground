// DO NOT EDIT. THIS FILE IS GENERATED.
// dart-dbus generate-remote-object org.freedesktop.NetworkManager.Device.xml

import 'package:dbus/dbus.dart';

class NMWirelessDevice extends DBusRemoteObject {
  NMWirelessDevice(DBusClient client, {DBusObjectPath path})
      : super(client, 'org.freedesktop.NetworkManager', path);

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.HwAddress
  Future<String> get HwAddress async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'HwAddress');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.PermHwAddress
  Future<String> get PermHwAddress async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'PermHwAddress');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.Mode
  Future<int> get Mode async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'Mode');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.Bitrate
  Future<int> get Bitrate async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'Bitrate');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.AccessPoints
  Future<List<String>> get AccessPoints async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'AccessPoints');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.ActiveAccessPoint
  Future<String> get ActiveAccessPoint async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'ActiveAccessPoint');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.WirelessCapabilities
  Future<int> get WirelessCapabilities async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless',
        'WirelessCapabilities');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Wireless.LastScan
  Future<int> get LastScan async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device.Wireless', 'LastScan');
    return (value as DBusInt64).value;
  }

  /// Invokes org.freedesktop.NetworkManager.Device.Wireless.GetAccessPoints()
  Future<List<String>> GetAccessPoints() async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager.Device.Wireless',
        'GetAccessPoints', []);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Invokes org.freedesktop.NetworkManager.Device.Wireless.GetAllAccessPoints()
  Future<List<String>> GetAllAccessPoints() async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager.Device.Wireless',
        'GetAllAccessPoints', []);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Invokes org.freedesktop.NetworkManager.Device.Wireless.RequestScan()
  Future RequestScan(Map<String, DBusValue> options) async {
    await callMethod(
        'org.freedesktop.NetworkManager.Device.Wireless', 'RequestScan', [
      DBusDict(
          DBusSignature('s'),
          DBusSignature('v'),
          options.map(
              (key, value) => MapEntry(DBusString(key), DBusVariant(value))))
    ]);
  }

  /// Subscribes to org.freedesktop.NetworkManager.Device.Wireless.PropertiesChanged
  Future<DBusSignalSubscription> subscribeWirelessDevicePropertiesChanged(
      void Function(Map<String, DBusValue> properties) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager.Device.Wireless', 'PropertiesChanged',
        (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('a{sv}')) {
        callback((values[0] as DBusDict).children.map((key, value) =>
            MapEntry((key as DBusString).value, (value as DBusVariant).value)));
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.Device.Wireless.AccessPointAdded
  Future<DBusSignalSubscription> subscribeAccessPointAdded(
      void Function(String access_point) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager.Device.Wireless', 'AccessPointAdded',
        (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('o')) {
        callback((values[0] as DBusObjectPath).value);
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.Device.Wireless.AccessPointRemoved
  Future<DBusSignalSubscription> subscribeAccessPointRemoved(
      void Function(String access_point) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager.Device.Wireless', 'AccessPointRemoved',
        (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('o')) {
        callback((values[0] as DBusObjectPath).value);
      }
    });
  }
}
