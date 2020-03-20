import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Ask Me Anything'),
        ),
        body: MagicBallApp(),
      ),
    ),
  );
}

//MagicBallApp Widget
class MagicBallApp extends StatefulWidget {
  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  int ballNumber = 1;

  void makePrediction() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: FlatButton(
          onPressed: () {
            makePrediction();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
