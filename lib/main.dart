import 'package:flutter/material.dart';

void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding App'),
      ),
      body: MaterialApp(home: Container(
        child: SizedBox(
          width: 272.0,
          child: Text(
            'Enter your mobile number to \nreceive a verification code',
            style: TextStyle(
              fontFamily: 'Gotham',
              fontSize: 15,
              color: const Color(0xff000000),
              letterSpacing: 0.24,
              fontWeight: FontWeight.w300,
              height: 1.9333333333333333,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),),
    );
  }
}
