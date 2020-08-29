import 'package:test/test.dart';
import 'package:battery_linux/battery_linux.dart';

void main() {
  test('todo: battery level', () async {
    final battery = Battery();
    print(await battery.batteryLevel());
  });
}
