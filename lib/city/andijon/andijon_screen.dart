import 'package:flutter/material.dart';

class AndijonScreen extends StatelessWidget {
  const AndijonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: const Text("Andijon"),
      ),
      ),
      // drawer: const Drawer(
      // child: MyDrawer(),
      // ),
    );
  }
}