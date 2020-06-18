import 'package:flutter/material.dart';

void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text('Hi!'),
          ),
        ),
      ),
    );
  }
}
