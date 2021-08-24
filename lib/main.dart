import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Virelic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int i=0;
  List<Color> colorslist = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
  ];
  Color color_now = Colors.white;
  void changecolor() {
    setState(() {
      color_now = colorslist[i];
      i++;
      if (i==colorslist.length){
        color_now = colorslist[0];
        i=1;
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_now,
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  setState(() {
                    changecolor();
                  });
                },
                child: Text('Change Color')),
          ],
        ),
      ),
    );
  }
}
