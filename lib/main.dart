import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.grey.shade800,
        ),
        body: const EightBall(),
      ),
    );
  }
}

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBall();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}