import 'dart:async';

import 'package:dbus/dbus.dart';

import 'upower_device.dart';

enum BatteryState { full, charging, discharging }

abstract class Battery {
  static Battery _instance;
  factory Battery() => _instance ??= BatteryLinux();
  Future<int> batteryLevel();
  Stream<BatteryState> onBatteryStateChanged();
}

const kAddress = 'org.freedesktop.UPower';
const kPath = '/org/freedesktop/UPower/devices/DisplayDevice';

enum BatteryStateLinux {
  unknown,
  charging,
  discharging,
  empty,
  fullyCharged,
  pendingCharge,
  pendingDischarge
}

extension ToBatteryState on BatteryStateLinux {
  BatteryState toBatteryState() {
    switch (this) {
      case BatteryStateLinux.charging:
        return BatteryState.charging;
      case BatteryStateLinux.discharging:
        return BatteryState.discharging;
      default:
        return BatteryState.full;
    }
  }
}

class BatteryLinux implements Battery {
  @override
  Future<int> batteryLevel() async {
    final device = _createDevice();
    final value = await device.Percentage;
    device.client.close();
    return value.round();
  }

  UPowerDevice _createDevice() {
    return UPowerDevice(
      DBusClient.system(),
      kAddress,
      path: DBusObjectPath(kPath),
    );
  }

  UPowerDevice _stateDevice;
  StreamController<BatteryState> _stateController;

  @override
  Stream<BatteryState> onBatteryStateChanged() {
    _stateController ??= StreamController<BatteryState>.broadcast(
      onListen: _listenState,
      onCancel: _cancelState,
    );
    return _stateController.stream;
  }

  void _addState(int value) {
    final state = BatteryStateLinux.values[value];
    _stateController.add(state.toBatteryState());
  }

  void _listenState() {
    _stateDevice ??= _createDevice();
    _stateDevice.subscribePropertiesChanged((_, changedProperties, __) {
      _updateState(changedProperties['State']);
    });
    _stateDevice.State.then((value) => _addState(value));
  }

  void _updateState(DBusValue value) {
    if (value == null) return;
    _addState((value as DBusUint32).value);
  }

  void _cancelState() {
    _stateDevice?.client?.close();
    _stateDevice = null;
  }
}
