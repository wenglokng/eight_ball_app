import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Eight ball App'),
        ),
        body: const EightBallApp(),
      ),
    );
  }
}

class EightBallApp extends StatefulWidget {
  const EightBallApp({Key? key}) : super(key: key);

  @override
  _EightBallAppState createState() => _EightBallAppState();
}

class _EightBallAppState extends State<EightBallApp> {
  int ballNumber = 1;
  void randomiseBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent.shade700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                randomiseBallNumber();
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ],
      ),
    );
  }
}
