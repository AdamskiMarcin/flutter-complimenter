import 'dart:math';

import 'package:flutter/material.dart';

const compliments = [
  "You're an awesome friend.",
  "You're a gift to those around you.",
  "You're a smart cookie.",
  "You are awesome!",
  "You have impeccable manners.",
  "I like your style.",
  "You have the best laugh.",
  "I appreciate you.",
  "You are the most perfect you there is.",
  "You are enough.",
];

final random = Random();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text;

  @override
  void initState() {
    super.initState();
    pickCompliment();
  }

  @override
  Widget build(BuildContext context) {
    final textWidget = Padding(
      padding: EdgeInsets.all(24),
      child: Text(
        text,
        style: TextStyle(fontSize: 32),
      ),
    );
    final buttonWidget = RaisedButton(
      onPressed: () => setState(() {
        pickCompliment();
      }),
      child: Text('Pick your compliment!'),
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              textWidget,
              buttonWidget,
            ],
          ),
        ),
      ),
    );
  }

  void pickCompliment() {
    int idx = random.nextInt(compliments.length);
    text = compliments[idx];
  }
}
