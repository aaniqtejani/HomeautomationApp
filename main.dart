import 'package:flutter/material.dart';

//import 'Room.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewRoom(),
    );
  }
}

class NewRoom extends StatefulWidget {
  @override
  _NewRoomState createState() => _NewRoomState();
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final int count = 7;

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(height: 20.0),
        Column(

        )
      ]
    );
  }
}

class _NewRoomState extends State<NewRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Room'),
      ),
      body: Center(
        child: Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 30, 30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.house),
                      hintText: 'Room Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 30, 30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.settings_remote),
                      hintText: 'Number of Sensors',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 30, 30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.device_hub),
                      hintText: 'Device Id',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}

Widget roomCard() {
  return Center(
    child: Card(
      child: SizedBox(
        width: 300,
        height: 100,
        child: Column(
          children: [
            Text('Room Name'),
            Text('Number of devices'),
            Text('Watts'),
          ],
        ),
      ),
    ),
  );
}

Widget bottomNavBar() {
  return BottomNavigationBar(items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.emoji_objects_outlined),
      label: 'Control',
      backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Rooms',
      backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
      backgroundColor: Colors.yellow,
    ),
  ]);
}
