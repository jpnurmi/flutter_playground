// DO NOT EDIT. THIS FILE IS GENERATED.
// dart-dbus generate-remote-object org.freedesktop.NetworkManager.xml

import 'package:dbus/dbus.dart';

class NetworkManager extends DBusRemoteObject {
  NetworkManager(DBusClient client)
      : super(client, 'org.freedesktop.NetworkManager',
            DBusObjectPath('/org/freedesktop/NetworkManager'));

  /// Gets org.freedesktop.NetworkManager.Devices
  Future<List<String>> get Devices async {
    var value = await getProperty('org.freedesktop.NetworkManager', 'Devices');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.AllDevices
  Future<List<String>> get AllDevices async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'AllDevices');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.Checkpoints
  Future<List<String>> get Checkpoints async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'Checkpoints');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.NetworkingEnabled
  Future<bool> get NetworkingEnabled async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'NetworkingEnabled');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.WirelessEnabled
  Future<bool> get WirelessEnabled async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'WirelessEnabled');
    return (value as DBusBoolean).value;
  }

  /// Sets org.freedesktop.NetworkManager.WirelessEnabled
  void SetWirelessEnabled(bool value) {
    setProperty('org.freedesktop.NetworkManager', 'WirelessEnabled',
        DBusBoolean(value));
  }

  /// Gets org.freedesktop.NetworkManager.WirelessHardwareEnabled
  Future<bool> get WirelessHardwareEnabled async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'WirelessHardwareEnabled');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.WwanEnabled
  Future<bool> get WwanEnabled async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'WwanEnabled');
    return (value as DBusBoolean).value;
  }

  /// Sets org.freedesktop.NetworkManager.WwanEnabled
  void SetWwanEnabled(bool value) {
    setProperty(
        'org.freedesktop.NetworkManager', 'WwanEnabled', DBusBoolean(value));
  }

  /// Gets org.freedesktop.NetworkManager.WwanHardwareEnabled
  Future<bool> get WwanHardwareEnabled async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'WwanHardwareEnabled');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.WimaxEnabled
  Future<bool> get WimaxEnabled async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'WimaxEnabled');
    return (value as DBusBoolean).value;
  }

  /// Sets org.freedesktop.NetworkManager.WimaxEnabled
  void SetWimaxEnabled(bool value) {
    setProperty(
        'org.freedesktop.NetworkManager', 'WimaxEnabled', DBusBoolean(value));
  }

  /// Gets org.freedesktop.NetworkManager.WimaxHardwareEnabled
  Future<bool> get WimaxHardwareEnabled async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'WimaxHardwareEnabled');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.ActiveConnections
  Future<List<String>> get ActiveConnections async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'ActiveConnections');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.PrimaryConnection
  Future<String> get PrimaryConnection async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'PrimaryConnection');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.PrimaryConnectionType
  Future<String> get PrimaryConnectionType async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'PrimaryConnectionType');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Metered
  Future<int> get Metered async {
    var value = await getProperty('org.freedesktop.NetworkManager', 'Metered');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.ActivatingConnection
  Future<String> get ActivatingConnection async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'ActivatingConnection');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Startup
  Future<bool> get Startup async {
    var value = await getProperty('org.freedesktop.NetworkManager', 'Startup');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Version
  Future<String> get Version async {
    var value = await getProperty('org.freedesktop.NetworkManager', 'Version');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Capabilities
  Future<List<int>> get Capabilities async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'Capabilities');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusUint32).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.State
  Future<int> get State async {
    var value = await getProperty('org.freedesktop.NetworkManager', 'State');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connectivity
  Future<int> get Connectivity async {
    var value =
        await getProperty('org.freedesktop.NetworkManager', 'Connectivity');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.ConnectivityCheckAvailable
  Future<bool> get ConnectivityCheckAvailable async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'ConnectivityCheckAvailable');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.ConnectivityCheckEnabled
  Future<bool> get ConnectivityCheckEnabled async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'ConnectivityCheckEnabled');
    return (value as DBusBoolean).value;
  }

  /// Sets org.freedesktop.NetworkManager.ConnectivityCheckEnabled
  void SetConnectivityCheckEnabled(bool value) {
    setProperty('org.freedesktop.NetworkManager', 'ConnectivityCheckEnabled',
        DBusBoolean(value));
  }

  /// Gets org.freedesktop.NetworkManager.ConnectivityCheckUri
  Future<String> get ConnectivityCheckUri async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'ConnectivityCheckUri');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.GlobalDnsConfiguration
  Future<Map<String, DBusValue>> get GlobalDnsConfiguration async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager', 'GlobalDnsConfiguration');
    return (value as DBusDict).children.map((key, value) =>
        MapEntry((key as DBusString).value, (value as DBusVariant).value));
  }

  /// Sets org.freedesktop.NetworkManager.GlobalDnsConfiguration
  void SetGlobalDnsConfiguration(Map<String, DBusValue> value) {
    setProperty(
        'org.freedesktop.NetworkManager',
        'GlobalDnsConfiguration',
        DBusDict(
            DBusSignature('s'),
            DBusSignature('v'),
            value.map((key, value) =>
                MapEntry(DBusString(key), DBusVariant(value)))));
  }

  /// Invokes org.freedesktop.NetworkManager.Reload()
  Future Reload(int flags) async {
    await callMethod(
        'org.freedesktop.NetworkManager', 'Reload', [DBusUint32(flags)]);
  }

  /// Invokes org.freedesktop.NetworkManager.GetDevices()
  Future<List<String>> GetDevices() async {
    var result =
        await callMethod('org.freedesktop.NetworkManager', 'GetDevices', []);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Invokes org.freedesktop.NetworkManager.GetAllDevices()
  Future<List<String>> GetAllDevices() async {
    var result =
        await callMethod('org.freedesktop.NetworkManager', 'GetAllDevices', []);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Invokes org.freedesktop.NetworkManager.GetDeviceByIpIface()
  Future<String> GetDeviceByIpIface(String iface) async {
    var result = await callMethod('org.freedesktop.NetworkManager',
        'GetDeviceByIpIface', [DBusString(iface)]);
    return (result.returnValues[0] as DBusObjectPath).value;
  }

  /// Invokes org.freedesktop.NetworkManager.ActivateConnection()
  Future<String> ActivateConnection(
      String connection, String device, String specific_object) async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager', 'ActivateConnection', [
      DBusObjectPath(connection),
      DBusObjectPath(device),
      DBusObjectPath(specific_object)
    ]);
    return (result.returnValues[0] as DBusObjectPath).value;
  }

  /// Invokes org.freedesktop.NetworkManager.AddAndActivateConnection()
  Future<List<DBusValue>> AddAndActivateConnection(
      Map<String, Map<String, DBusValue>> connection,
      String device,
      String specific_object) async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager', 'AddAndActivateConnection', [
      DBusDict(
          DBusSignature('s'),
          DBusSignature('a{sv}'),
          connection.map((key, value) => MapEntry(
              DBusString(key),
              DBusDict(
                  DBusSignature('s'),
                  DBusSignature('v'),
                  value.map((key, value) =>
                      MapEntry(DBusString(key), DBusVariant(value))))))),
      DBusObjectPath(device),
      DBusObjectPath(specific_object)
    ]);
    return result.returnValues;
  }

  /// Invokes org.freedesktop.NetworkManager.AddAndActivateConnection2()
  Future<List<DBusValue>> AddAndActivateConnection2(
      Map<String, Map<String, DBusValue>> connection,
      String device,
      String specific_object,
      Map<String, DBusValue> options) async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager', 'AddAndActivateConnection2', [
      DBusDict(
          DBusSignature('s'),
          DBusSignature('a{sv}'),
          connection.map((key, value) => MapEntry(
              DBusString(key),
              DBusDict(
                  DBusSignature('s'),
                  DBusSignature('v'),
                  value.map((key, value) =>
                      MapEntry(DBusString(key), DBusVariant(value))))))),
      DBusObjectPath(device),
      DBusObjectPath(specific_object),
      DBusDict(
          DBusSignature('s'),
          DBusSignature('v'),
          options.map(
              (key, value) => MapEntry(DBusString(key), DBusVariant(value))))
    ]);
    return result.returnValues;
  }

  /// Invokes org.freedesktop.NetworkManager.DeactivateConnection()
  Future DeactivateConnection(String active_connection) async {
    await callMethod('org.freedesktop.NetworkManager', 'DeactivateConnection',
        [DBusObjectPath(active_connection)]);
  }

  /// Invokes org.freedesktop.NetworkManager.Sleep()
  Future Sleep(bool sleep) async {
    await callMethod(
        'org.freedesktop.NetworkManager', 'Sleep', [DBusBoolean(sleep)]);
  }

  /// Invokes org.freedesktop.NetworkManager.Enable()
  Future Enable(bool enable) async {
    await callMethod(
        'org.freedesktop.NetworkManager', 'Enable', [DBusBoolean(enable)]);
  }

  /// Invokes org.freedesktop.NetworkManager.GetPermissions()
  Future<Map<String, String>> GetPermissions() async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager', 'GetPermissions', []);
    return (result.returnValues[0] as DBusDict).children.map((key, value) =>
        MapEntry((key as DBusString).value, (value as DBusString).value));
  }

  /// Invokes org.freedesktop.NetworkManager.SetLogging()
  Future SetLogging(String level, String domains) async {
    await callMethod('org.freedesktop.NetworkManager', 'SetLogging',
        [DBusString(level), DBusString(domains)]);
  }

  /// Invokes org.freedesktop.NetworkManager.GetLogging()
  Future<List<DBusValue>> GetLogging() async {
    var result =
        await callMethod('org.freedesktop.NetworkManager', 'GetLogging', []);
    return result.returnValues;
  }

  /// Invokes org.freedesktop.NetworkManager.CheckConnectivity()
  Future<int> CheckConnectivity() async {
    var result = await callMethod(
        'org.freedesktop.NetworkManager', 'CheckConnectivity', []);
    return (result.returnValues[0] as DBusUint32).value;
  }

  /// Invokes org.freedesktop.NetworkManager.state()
  Future<int> state() async {
    var result =
        await callMethod('org.freedesktop.NetworkManager', 'state', []);
    return (result.returnValues[0] as DBusUint32).value;
  }

  /// Invokes org.freedesktop.NetworkManager.CheckpointCreate()
  Future<String> CheckpointCreate(
      List<String> devices, int rollback_timeout, int flags) async {
    var result =
        await callMethod('org.freedesktop.NetworkManager', 'CheckpointCreate', [
      DBusArray(
          DBusSignature('o'), devices.map((child) => DBusObjectPath(child))),
      DBusUint32(rollback_timeout),
      DBusUint32(flags)
    ]);
    return (result.returnValues[0] as DBusObjectPath).value;
  }

  /// Invokes org.freedesktop.NetworkManager.CheckpointDestroy()
  Future CheckpointDestroy(String checkpoint) async {
    await callMethod('org.freedesktop.NetworkManager', 'CheckpointDestroy',
        [DBusObjectPath(checkpoint)]);
  }

  /// Invokes org.freedesktop.NetworkManager.CheckpointRollback()
  Future<Map<String, int>> CheckpointRollback(String checkpoint) async {
    var result = await callMethod('org.freedesktop.NetworkManager',
        'CheckpointRollback', [DBusObjectPath(checkpoint)]);
    return (result.returnValues[0] as DBusDict).children.map((key, value) =>
        MapEntry((key as DBusString).value, (value as DBusUint32).value));
  }

  /// Invokes org.freedesktop.NetworkManager.CheckpointAdjustRollbackTimeout()
  Future CheckpointAdjustRollbackTimeout(
      String checkpoint, int add_timeout) async {
    await callMethod(
        'org.freedesktop.NetworkManager',
        'CheckpointAdjustRollbackTimeout',
        [DBusObjectPath(checkpoint), DBusUint32(add_timeout)]);
  }

  /// Subscribes to org.freedesktop.NetworkManager.CheckPermissions
  Future<DBusSignalSubscription> subscribeCheckPermissions(
      void Function() callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager', 'CheckPermissions', (values) {
      if (values.isEmpty) {
        callback();
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.StateChanged
  Future<DBusSignalSubscription> subscribeStateChanged(
      void Function(int state) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager', 'StateChanged', (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('u')) {
        callback((values[0] as DBusUint32).value);
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.PropertiesChanged
  Future<DBusSignalSubscription> subscribeNetworkPropertiesChanged(
      void Function(Map<String, DBusValue> properties) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager', 'PropertiesChanged', (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('a{sv}')) {
        callback((values[0] as DBusDict).children.map((key, value) =>
            MapEntry((key as DBusString).value, (value as DBusVariant).value)));
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.DeviceAdded
  Future<DBusSignalSubscription> subscribeDeviceAdded(
      void Function(String device_path) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager', 'DeviceAdded', (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('o')) {
        callback((values[0] as DBusObjectPath).value);
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.DeviceRemoved
  Future<DBusSignalSubscription> subscribeDeviceRemoved(
      void Function(String device_path) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager', 'DeviceRemoved', (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('o')) {
        callback((values[0] as DBusObjectPath).value);
      }
    });
  }
}
