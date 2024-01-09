import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 77, 133, 231),
          appBar: AppBar(
            elevation: 50.0,
            backgroundColor: Color.fromARGB(255, 8, 95, 165),
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          body: magicBall(),
        ),
      ),
    );

// ignore: camel_case_types
class magicBall extends StatefulWidget {
  @override
  State<magicBall> createState() => _magicBallState();
}

// ignore: camel_case_types
class _magicBallState extends State<magicBall> {
  int number = 5;
  void change() {
    int random = Random().nextInt(5) + 1;
    setState(() {
      number = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          change();
        },
        child: Image(image: AssetImage('images/ball$number.png')),
      ),
    );
  }
  
}
