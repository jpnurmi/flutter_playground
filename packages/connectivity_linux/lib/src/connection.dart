// DO NOT EDIT. THIS FILE IS GENERATED.
// dart-dbus generate-remote-object org.freedesktop.NetworkManager.Connection.Active.xml

import 'package:dbus/dbus.dart';

class NMConnection extends DBusRemoteObject {
  NMConnection(DBusClient client, {DBusObjectPath path})
      : super(client, 'org.freedesktop.NetworkManager', path);

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Connection
  Future<String> get Connection async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Connection');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.SpecificObject
  Future<String> get SpecificObject async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'SpecificObject');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Id
  Future<String> get Id async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Id');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Uuid
  Future<String> get Uuid async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Uuid');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Type
  Future<String> get Type async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Type');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Devices
  Future<List<String>> get Devices async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Devices');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.State
  Future<int> get State async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'State');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.StateFlags
  Future<int> get StateFlags async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'StateFlags');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Default
  Future<bool> get Default async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Default');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Ip4Config
  Future<String> get Ip4Config async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Ip4Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Dhcp4Config
  Future<String> get Dhcp4Config async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Dhcp4Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Default6
  Future<bool> get Default6 async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Default6');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Ip6Config
  Future<String> get Ip6Config async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Ip6Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Dhcp6Config
  Future<String> get Dhcp6Config async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Dhcp6Config');
    return (value as DBusObjectPath).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Vpn
  Future<bool> get Vpn async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Vpn');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.NetworkManager.Connection.Active.Master
  Future<String> get Master async {
    var value = await getProperty(
        'org.freedesktop.NetworkManager.Connection.Active', 'Master');
    return (value as DBusObjectPath).value;
  }

  /// Subscribes to org.freedesktop.NetworkManager.Connection.Active.StateChanged
  Future<DBusSignalSubscription> subscribeStateChanged(
      void Function(int state, int reason) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager.Connection.Active', 'StateChanged',
        (values) {
      if (values.length == 2 &&
          values[0].signature == DBusSignature('u') &&
          values[1].signature == DBusSignature('u')) {
        callback(
            (values[0] as DBusUint32).value, (values[1] as DBusUint32).value);
      }
    });
  }

  /// Subscribes to org.freedesktop.NetworkManager.Connection.Active.PropertiesChanged
  Future<DBusSignalSubscription> subscribeActiveConnectionPropertiesChanged(
      void Function(Map<String, DBusValue> properties) callback) async {
    return await subscribeSignal(
        'org.freedesktop.NetworkManager.Connection.Active', 'PropertiesChanged',
        (values) {
      if (values.length == 1 && values[0].signature == DBusSignature('a{sv}')) {
        callback((values[0] as DBusDict).children.map((key, value) =>
            MapEntry((key as DBusString).value, (value as DBusVariant).value)));
      }
    });
  }
}
