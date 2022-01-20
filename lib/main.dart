// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Decision Maker'),
          backgroundColor: Colors.teal,
        ),
        body: const BallApp(),
        backgroundColor: Colors.teal[500],
      ),
    ),
  );
}

class BallApp extends StatefulWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: changeAction,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  changeAction() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
