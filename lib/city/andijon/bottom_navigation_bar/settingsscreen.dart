import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 45, 141),
      body: Container(
        child: const Center(
          child: Text(
            'Welcome to Setting Screen!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),);
  }
}