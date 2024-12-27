import 'package:flutter/material.dart';
import 'package:sayohat/router.dart';
late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mkq = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: OnGenerateRouter().router);
  }
}
