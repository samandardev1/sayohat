import 'package:flutter/material.dart';

class RestarnScreen extends StatelessWidget {
  const RestarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Restarn')),
      body: const Center(
        child: Text(
          'Restarn uchun ma’lumotlar',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}