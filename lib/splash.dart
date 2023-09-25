import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add any necessary initialization logic here

    // Example: Wait for 3 seconds and then navigate to the main screen
    Timer(
      Duration(seconds: 3),
      () {
        // Navigate to the main screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // You can customize the appearance of your splash screen here
      // // Set the background color to pale blue
      backgroundColor: Colors.blue[100], // Adjust the shade as needed
      body: Center(
        child: Text(
            'splash screen'), //Image.asset('assets/logo.png'), // Replace with your logo image
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Text('This is the main screen of your phone.'),
      ),
    );
  }
}
