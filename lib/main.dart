import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.indigo,
    Colors.teal,
    Colors.orange,
    Colors.brown
  ];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    int colorIndex = random.nextInt(8);
    if (colorIndex != index) {
      index = colorIndex;
    } else {
      if (index >= colors.length - 2) {
        index--;
      } else {
        index++;
      }
    }
    setState(() => index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SizedBox.expand(
          child: RaisedButton(
            onPressed: () => changeIndex(),
            child: Text(
              "Hey there",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800),
            ),
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
