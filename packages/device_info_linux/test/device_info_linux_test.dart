import 'package:test/test.dart';

import 'package:device_info_linux/device_info_linux.dart';

void main() {
  test('not empty', () async {
    final deviceInfo = DeviceInfo();
    final linuxInfo = await deviceInfo.linuxInfo;
    expect(linuxInfo.id, isNotEmpty);
    expect(linuxInfo.name, isNotEmpty);
    expect(linuxInfo.version, isNotEmpty);
    expect(linuxInfo.prettyName, isNotEmpty);
    expect(linuxInfo.hostName, isNotEmpty);
    expect(linuxInfo.machineId, isNotEmpty);
  });
}
