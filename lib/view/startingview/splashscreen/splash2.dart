import 'package:flutter/material.dart';

import '../../../controller/components/blacktextwidget.dart';
import '../../../controller/components/greenbutton.dart';
import '../../../controller/components/greytextwidget.dart';

class SplashScreentwo extends StatelessWidget {
  const SplashScreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height:double.infinity,
          width:double.infinity,
          decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/images/fruit.png'),
                fit:BoxFit.cover,
              )
          ),
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(height:50),
                BlackTextWidget(text:'Buy Premium \n Quality Fruits'),
                SizedBox(height:20),
                GreyTextWidget(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
                Spacer(),
                GreenButton(text: 'Get Started', onTap: (){}),
                SizedBox(height:50),
              ]
          )
      ),
    );
  }
}
