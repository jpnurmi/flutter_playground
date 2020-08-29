import 'package:flutter/material.dart';
import 'package:battery_linux/battery_linux.dart';

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

class PlaygroundPage extends StatefulWidget {
  PlaygroundPage({Key key}) : super(key: key);

  @override
  _PlaygroundPageState createState() => _PlaygroundPageState();
}

class _PlaygroundPageState extends State<PlaygroundPage> {
  final Battery _battery = Battery();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Playground'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _battery.batteryLevel(),
          builder: (context, AsyncSnapshot<int> snapshot) {
            final level = snapshot.hasData ? snapshot.data : null;
            return StreamBuilder(
              stream: _battery.onBatteryStateChanged(),
              builder: (context, AsyncSnapshot<BatteryState> snapshot) {
                final state = snapshot.hasData ? snapshot.data : null;
                return Text(
                  'Battery: $level% (${state.toString().split('.').last})',
                  style: Theme.of(context).textTheme.headline5,
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => setState(() {}),
      ),
    );
  }
}
