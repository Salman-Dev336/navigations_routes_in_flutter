import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text(
          'Welcome to Screen 3',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}