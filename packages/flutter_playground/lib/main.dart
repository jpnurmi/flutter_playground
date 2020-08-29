import 'package:flutter/material.dart';
import 'package:battery_linux/battery_linux.dart';
import 'package:connectivity_linux/connectivity_linux.dart';
import 'package:device_info_linux/device_info_linux.dart';
import 'package:package_info_linux/package_info_linux.dart';

void main() => runApp(PlaygroundApp());

class PlaygroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      home: PlaygroundPage(),
    );
  }
}

class PlaygroundIndicator extends StatelessWidget {
  final bool busy;
  PlaygroundIndicator(this.busy, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return busy ? CircularProgressIndicator() : SizedBox.shrink();
  }
}

class PlaygroundPage extends StatefulWidget {
  PlaygroundPage({Key key}) : super(key: key);

  @override
  PlaygroundPageState createState() => PlaygroundPageState();
}

class PlaygroundPageState extends State<PlaygroundPage> {
  final _battery = Battery();
  final _connectivity = Connectivity();
  final _packageInfo = PackageInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Playground'),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Battery',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Card(
              child: FutureBuilder(
                future: _battery.batteryLevel(),
                builder: (context, AsyncSnapshot<int> snapshot) {
                  final level = snapshot.hasData ? snapshot.data : null;
                  return ListTile(
                    title: Text('${level ?? '-'}%'),
                    subtitle: Text('Level'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: StreamBuilder(
                stream: _battery.onBatteryStateChanged(),
                builder: (context, AsyncSnapshot<BatteryState> snapshot) {
                  final state = snapshot.hasData ? snapshot.data : null;
                  return ListTile(
                    title: Text(state?.toString()?.split('.')?.last ?? '-'),
                    subtitle: Text('State'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Connectivity',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Card(
              child: FutureBuilder(
                future: _connectivity.checkConnectivity(),
                builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) {
                  return StreamBuilder(
                    stream: _connectivity.onConnectivityChanged,
                    initialData: snapshot.hasData ? snapshot.data : null,
                    builder:
                        (context, AsyncSnapshot<ConnectivityResult> snapshot) {
                      final connectivity =
                          snapshot.hasData ? snapshot.data : null;
                      return ListTile(
                        title: Text(
                            connectivity?.toString()?.split('.')?.last ?? '-'),
                        subtitle: Text('Result'),
                        trailing: PlaygroundIndicator(!snapshot.hasData),
                      );
                    },
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: _connectivity.getWifiName(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  final name = snapshot.hasData ? snapshot.data : null;
                  return ListTile(
                    title: Text(name ?? '-'),
                    subtitle: Text('WiFi'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: _connectivity.getWifiIP(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  final ip = snapshot.hasData ? snapshot.data : null;
                  return ListTile(
                    title: Text(ip ?? '-'),
                    subtitle: Text('IP'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: _connectivity.getWifiBSSID(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  final bssid = snapshot.hasData ? snapshot.data : null;
                  return ListTile(
                    title: Text(bssid?.replaceRange(9, null, '...') ?? '-'),
                    subtitle: Text('BSSID'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Device Info',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Card(
              child: FutureBuilder(
                future: DeviceInfo().linuxInfo,
                builder: (context, AsyncSnapshot<LinuxDeviceInfo> snapshot) {
                  final id = snapshot.hasData ? snapshot.data.id : null;
                  return ListTile(
                    title: Text(id ?? '-'),
                    subtitle: Text('ID'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: DeviceInfo().linuxInfo,
                builder: (context, AsyncSnapshot<LinuxDeviceInfo> snapshot) {
                  final name = snapshot.hasData ? snapshot.data.name : null;
                  return ListTile(
                    title: Text(name ?? '-'),
                    subtitle: Text('Name'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: DeviceInfo().linuxInfo,
                builder: (context, AsyncSnapshot<LinuxDeviceInfo> snapshot) {
                  final version =
                      snapshot.hasData ? snapshot.data.version : null;
                  return ListTile(
                    title: Text(version ?? '-'),
                    subtitle: Text('Version'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: DeviceInfo().linuxInfo,
                builder: (context, AsyncSnapshot<LinuxDeviceInfo> snapshot) {
                  final prettyName =
                      snapshot.hasData ? snapshot.data.prettyName : null;
                  return ListTile(
                    title: Text(prettyName ?? '-'),
                    subtitle: Text('Pretty Name'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: DeviceInfo().linuxInfo,
                builder: (context, AsyncSnapshot<LinuxDeviceInfo> snapshot) {
                  final hostName =
                      snapshot.hasData ? snapshot.data.hostName : null;
                  return ListTile(
                    title: Text(hostName ?? '-'),
                    subtitle: Text('Host Name'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Card(
              child: FutureBuilder(
                future: DeviceInfo().linuxInfo,
                builder: (context, AsyncSnapshot<LinuxDeviceInfo> snapshot) {
                  final machineId =
                      snapshot.hasData ? snapshot.data.machineId : null;
                  return ListTile(
                    title:
                        Text(machineId?.replaceRange(24, null, '...') ?? '-'),
                    subtitle: Text('Machine ID'),
                    trailing: PlaygroundIndicator(!snapshot.hasData),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Package Info',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Card(
              child: ListTile(
                title: Text(_packageInfo.appName),
                subtitle: Text('App Name'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('TODO'),
                subtitle: Text('Build Number'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(_packageInfo.packageName),
                subtitle: Text('Package Name'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('TODO'),
                subtitle: Text('Version'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => setState(() {}),
      ),
    );
  }
}
