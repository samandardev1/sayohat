import 'package:flutter/material.dart';

class MehmonxonaScreen extends StatelessWidget {
  const MehmonxonaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mehmonxona')),
      body: const Center(
        child: Text(
          "Mehmonxona uchun ma’lumotlar",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
