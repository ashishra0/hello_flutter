import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp()); // Entry Point for the widget

class HelloFlutterApp extends StatelessWidget {
  // This is our container for the whole app
  // This widget cannot store data
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(title: 'Welcome to my first flutter app')
    );
  }
}

class HomePage extends StatefulWidget {
  // This widget can store data
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color = Colors.white;
  void _changeColor() {
    setState(() {
      if (color == Colors.white) {
        color = Colors.redAccent;
      } else {
        color = Colors.white;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, Flutter',
              style: TextStyle(fontSize: 50, color: color)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: Icon(Icons.play_for_work)
      ),
    );
  }
}
