// DO NOT EDIT. THIS FILE IS GENERATED.
// dart-dbus generate-remote-object org.freedesktop.NetworkManager.Device.xml

import 'package:dbus/dbus.dart';

class NMDevice extends DBusRemoteObject {
  NMDevice(DBusClient client, {DBusObjectPath path})
      : super(client, 'org.freedesktop.NetworkManager', path);

  /// Gets org.freedesktop.NetworkManager.Device.Udi
  Future<String> get Udi async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Udi');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Path
  Future<String> get Path async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Path');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Interface
  Future<String> get Interface async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Interface');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.IpInterface
  Future<String> get IpInterface async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'IpInterface');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Driver
  Future<String> get Driver async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Driver');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.DriverVersion
  Future<String> get DriverVersion async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'DriverVersion');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.FirmwareVersion
  Future<String> get FirmwareVersion async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'FirmwareVersion');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Capabilities
  Future<int> get Capabilities async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Capabilities');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Ip4Address
  Future<int> get Ip4Address async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Ip4Address');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.State
  Future<int> get State async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'State');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.StateReason
  Future<DBusValue> get StateReason async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'StateReason');
    return value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.ActiveConnection
  Future<String> get ActiveConnection async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'ActiveConnection');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Ip4Config
  Future<String> get Ip4Config async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Ip4Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Dhcp4Config
  Future<String> get Dhcp4Config async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Dhcp4Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Ip6Config
  Future<String> get Ip6Config async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Ip6Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Dhcp6Config
  Future<String> get Dhcp6Config async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Dhcp6Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Managed
  Future<bool> get Managed async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Managed');
    return (value as DBusBoolean).value;
  }

  /// Sets org.freedesktop.NetworkManager.Device.Managed
  void SetManaged(bool value) {
    setProperty(
        'org.freedesktop.NetworkManager.Device', 'Managed', DBusBoolean(value));
  }

  /// Gets org.freedesktop.NetworkManager.Device.Autoconnect
  Future<bool> get Autoconnect async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Autoconnect');
    return (value as DBusBoolean).value;
  }

  /// Sets org.freedesktop.NetworkManager.Device.Autoconnect
  void SetAutoconnect(bool value) {
    setProperty('org.freedesktop.NetworkManager.Device', 'Autoconnect',
        DBusBoolean(value));
  }

  /// Gets org.freedesktop.NetworkManager.Device.FirmwareMissing
  Future<bool> get FirmwareMissing async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'FirmwareMissing');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.NmPluginMissing
  Future<bool> get NmPluginMissing async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'NmPluginMissing');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.DeviceType
  Future<int> get DeviceType async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'DeviceType');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.AvailableConnections
  Future<List<String>> get AvailableConnections async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'AvailableConnections');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.Device.PhysicalPortId
  Future<String> get PhysicalPortId async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'PhysicalPortId');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Mtu
  Future<int> get Mtu async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Mtu');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Metered
  Future<int> get Metered async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Metered');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.LldpNeighbors
  Future<List<Map<String, DBusValue>>> get LldpNeighbors async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'LldpNeighbors');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusDict).children.map((key, value) =>
            MapEntry((key as DBusString).value, (value as DBusVariant).value)))
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.Device.Real
  Future<bool> get Real async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'Real');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Ip4Connectivity
  Future<int> get Ip4Connectivity async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Ip4Connectivity');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.Ip6Connectivity
  Future<int> get Ip6Connectivity async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'Ip6Connectivity');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.InterfaceFlags
  Future<int> get InterfaceFlags async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Device', 'InterfaceFlags');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Device.HwAddress
  Future<String> get HwAddress async {
    var value =
        await getProperty('org.freedesktop.NetworkManager.Device', 'HwAddress');
    return (value as DBusString).value;
  }

  /// Invokes org.freedesktop.NetworkManager.Device.Reapply()
  Future Reapply(Map<String, Map<String, DBusValue>> connection, int version_id,
      int flags) async {
    await callMethod('org.freedesktop.NetworkManager.Device', 'Reapply', [
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
      DBusUint64(version_id),
      DBusUint32(flags)
    ]);
  }

  /// Invokes org.freedesktop.NetworkManager.Device.GetAppliedConnection()
  Future<List<DBusValue>> GetAppliedConnection(int flags) async {
    var result = await callMethod('org.freedesktop.NetworkManager.Device',
        'GetAppliedConnection', [DBusUint32(flags)]);
    return result.returnValues;
  }

  /// Invokes org.freedesktop.NetworkManager.Device.Disconnect()
  Future Disconnect() async {
    await callMethod('org.freedesktop.NetworkManager.Device', 'Disconnect', []);
  }

  /// Invokes org.freedesktop.NetworkManager.Device.Delete()
  Future Delete() async {
    await callMethod('org.freedesktop.NetworkManager.Device', 'Delete', []);
  }

  /// Subscribes to org.freedesktop.NetworkManager.Device.StateChanged
  Future<DBusSignalSubscription> subscribeStateChanged(
      void Function(int new_state, int old_state, int reason) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager.Device', 'StateChanged', (values) {
      if (values.length == 3 &&
          values[0].signature == DBusSignature('u') &&
          values[1].signature == DBusSignature('u') &&
          values[2].signature == DBusSignature('u')) {
        callback((values[0] as DBusUint32).value,
            (values[1] as DBusUint32).value, (values[2] as DBusUint32).value);
      }
    });
  }
}
