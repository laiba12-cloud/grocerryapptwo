import 'package:flutter/material.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
        home:SplashScreen(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
