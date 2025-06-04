import 'package:flutter/material.dart';
import 'package:grocerryapptwo/view/authview/loginscreen/login.dart';
import 'package:grocerryapptwo/view/authview/signupscreen/signup.dart';
import 'package:grocerryapptwo/view/authview/welcomescreen/welcome.dart';
import 'package:grocerryapptwo/view/authview/welcomescreen/welcome.dart';
import 'package:grocerryapptwo/view/startingview/introscreen/OnboardingScreen.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splash2.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splash2_1.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splash2_3.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splash2_4.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splashscreen.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splashscreen3.dart';
import 'package:grocerryapptwo/view/startingview/splashscreen/splashscreen4.dart';

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
        home:Splashtwo_three()
      //Splashtwo_one()


      //SplashScreenThree()
      //SplashTwo()
        //WelcomeScreen()
        //SignupScreen()
      //LoginScreen()
        //SignupScreen()
      //SplashScreenfour()
      //SplashScreenthree()
      //OnBoardingScreen()
      //SplashScreentwo()
        //SplashScreen(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
