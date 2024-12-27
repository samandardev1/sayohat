import 'package:flutter/material.dart';

class KaraokiBar extends StatelessWidget {
  const KaraokiBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text("Karaoke bar"))),
    );
  }
}