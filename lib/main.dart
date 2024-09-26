import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagicBallApp(),
    ),
  );
}

class MagicBallApp extends StatefulWidget {
  const MagicBallApp({super.key});

  @override
  State<MagicBallApp> createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  int ballNo = 1;

  @override
  Widget build(BuildContext context) {
    
    void randomizeBall() {
      setState(() {
        ballNo = Random().nextInt(5) + 1;
      });
    }

    return Scaffold(
      body: Expanded(
        child: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: randomizeBall,
                child: Image.asset('assets/images/ball$ballNo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
