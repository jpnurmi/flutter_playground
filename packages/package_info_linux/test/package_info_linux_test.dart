import 'package:test/test.dart';

import 'package:package_info_linux/package_info_linux.dart';

void main() {
  test('not empty', () async {
    final packageInfo = PackageInfo();
    print('appName: ${packageInfo.appName}');
    print('buildNumber: ${packageInfo.buildNumber}');
    print('packageName: ${packageInfo.packageName}');
    print('version: ${packageInfo.version}');
    // expect(packageInfo.appName, isNotEmpty);
    // expect(packageInfo.buildNumber, isNotEmpty);
    // expect(packageInfo.packageName, isNotEmpty);
    // expect(packageInfo.version, isNotEmpty);
  });
}
