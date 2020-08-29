// DO NOT EDIT. THIS FILE IS GENERATED.
// dart-dbus generate-remote-object org.freedesktop.UPower.Device.xml
import 'package:dbus/dbus.dart';

class UPowerDevice extends DBusRemoteObject {
  UPowerDevice(DBusClient client, String destination,
      {DBusObjectPath path = const DBusObjectPath.unchecked('/')})
      : super(client, destination, path);

  /// Gets org.freedesktop.UPower.Device.NativePath
  Future<String> get NativePath async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'NativePath');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.UPower.Device.Vendor
  Future<String> get Vendor async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Vendor');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.UPower.Device.Model
  Future<String> get Model async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Model');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.UPower.Device.Serial
  Future<String> get Serial async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Serial');
    return (value as DBusString).value;
  }

  /// Gets org.freedesktop.UPower.Device.UpdateTime
  Future<int> get UpdateTime async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'UpdateTime');
    return (value as DBusUint64).value;
  }

  /// Gets org.freedesktop.UPower.Device.Type
  Future<int> get Type async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Type');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.UPower.Device.PowerSupply
  Future<bool> get PowerSupply async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'PowerSupply');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.UPower.Device.HasHistory
  Future<bool> get HasHistory async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'HasHistory');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.UPower.Device.HasStatistics
  Future<bool> get HasStatistics async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'HasStatistics');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.UPower.Device.Online
  Future<bool> get Online async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Online');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.UPower.Device.Energy
  Future<double> get Energy async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Energy');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.EnergyEmpty
  Future<double> get EnergyEmpty async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'EnergyEmpty');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.EnergyFull
  Future<double> get EnergyFull async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'EnergyFull');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.EnergyFullDesign
  Future<double> get EnergyFullDesign async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'EnergyFullDesign');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.EnergyRate
  Future<double> get EnergyRate async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'EnergyRate');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.Voltage
  Future<double> get Voltage async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Voltage');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.Luminosity
  Future<double> get Luminosity async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'Luminosity');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.TimeToEmpty
  Future<int> get TimeToEmpty async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'TimeToEmpty');
    return (value as DBusInt64).value;
  }

  /// Gets org.freedesktop.UPower.Device.TimeToFull
  Future<int> get TimeToFull async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'TimeToFull');
    return (value as DBusInt64).value;
  }

  /// Gets org.freedesktop.UPower.Device.Percentage
  Future<double> get Percentage async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'Percentage');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.Temperature
  Future<double> get Temperature async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'Temperature');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.IsPresent
  Future<bool> get IsPresent async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'IsPresent');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.UPower.Device.State
  Future<int> get State async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'State');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.UPower.Device.IsRechargeable
  Future<bool> get IsRechargeable async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'IsRechargeable');
    return (value as DBusBoolean).value;
  }

  /// Gets org.freedesktop.UPower.Device.Capacity
  Future<double> get Capacity async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'Capacity');
    return (value as DBusDouble).value;
  }

  /// Gets org.freedesktop.UPower.Device.Technology
  Future<int> get Technology async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'Technology');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.UPower.Device.WarningLevel
  Future<int> get WarningLevel async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'WarningLevel');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.UPower.Device.BatteryLevel
  Future<int> get BatteryLevel async {
    var value =
        await getProperty('org.freedesktop.UPower.Device', 'BatteryLevel');
    return (value as DBusUint32).value;
  }

  /// Gets org.freedesktop.UPower.Device.IconName
  Future<String> get IconName async {
    var value = await getProperty('org.freedesktop.UPower.Device', 'IconName');
    return (value as DBusString).value;
  }

  /// Invokes org.freedesktop.UPower.Device.Refresh()
  Future Refresh() async {
    await callMethod('org.freedesktop.UPower.Device', 'Refresh', []);
  }

  /// Invokes org.freedesktop.UPower.Device.GetHistory()
  Future<List<DBusValue>> GetHistory(
      String type, int timespan, int resolution) async {
    var result = await callMethod('org.freedesktop.UPower.Device', 'GetHistory',
        [DBusString(type), DBusUint32(timespan), DBusUint32(resolution)]);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => child)
        .toList();
  }

  /// Invokes org.freedesktop.UPower.Device.GetStatistics()
  Future<List<DBusValue>> GetStatistics(String type) async {
    var result = await callMethod(
        'org.freedesktop.UPower.Device', 'GetStatistics', [DBusString(type)]);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => child)
        .toList();
  }
}
