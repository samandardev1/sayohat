import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sayohat/city/andijon/bottom_navigation_bar/myhome.dart';
import 'package:sayohat/city/andijon/bottom_navigation_bar/settingsscreen.dart';
import 'package:sayohat/city/andijon/bottom_navigation_bar/userscreen.dart';

class Andijon extends StatefulWidget {
  const Andijon({super.key});

  @override
  State<Andijon> createState() => _AndijonState();
}

class _AndijonState extends State<Andijon> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: tabIndex,
        backgroundColor: const Color(0xff133093),
        animationDuration: const Duration(milliseconds: 500),
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.location_on, size: 30),
          Icon(Icons.settings, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        },
      ),
      backgroundColor: const Color.fromARGB(255, 16, 45, 141),
      body: SafeArea(child: IndexedStack(
        index: tabIndex,
        children: const [
          MyHome(),
          // MapScreen(),
          SettingsScreen(),
          UserScreen(),
        ],

      )) 
    );
  }

  
}
