import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sayohat/providers/andijon_provider.dart';
import 'package:sayohat/router.dart';
late Size mq;
void main() {
  runApp(
      ChangeNotifierProvider(child: MyApp(), create: (_) => AndijonProvider()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: OnGenerateRouter().router);
  }
}