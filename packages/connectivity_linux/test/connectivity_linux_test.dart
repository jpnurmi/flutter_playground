import 'package:test/test.dart';
import 'package:connectivity_linux/connectivity_linux.dart';

void main() {
  test('todo: connectivity', () async {
    final connectivity = Connectivity();
    print(await connectivity.checkConnectivity());
    print(await connectivity.getWifiName());
    print(await connectivity.getWifiIP());
    print(await connectivity.getWifiBSSID());
  });
}
