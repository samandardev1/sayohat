import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 45, 141),
      body: Container(
        child: const Center(
          child: Text(
            'Welcome to Map Screen!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),);
  }
}