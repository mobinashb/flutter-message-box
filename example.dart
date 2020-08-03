import 'package:flutter/material.dart';
import 'message_box_painter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: CustomPaint(
            painter: MessageBoxPainter(color: Colors.black.withOpacity(0.2)),
            child: Container(
              height: 300,
            )
          ),
        ),
      ),
    );
  }
}
