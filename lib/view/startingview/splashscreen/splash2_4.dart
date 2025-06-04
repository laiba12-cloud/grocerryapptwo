import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greenbutton.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            'assets/images/cockroach.png',
            fit:BoxFit.cover,
          ),
          Container(
            //height:double.infinity,
           // width:double.infinity,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only(
                topRight: Radius.circular(500),
                topLeft: Radius.circular(500),
              ),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                 Spacer(),
                 BlackTextWidget(text: 'Get Discounts \n On All Products'),
                  SizedBox(height:10),
                  GreyTextWidget(text: 'Lorem ipsum dolor sit amet consetetur \n sadipscing elitr, sed diam nonumy'),
               SizedBox(height:10),
                GreenTextButton(text: 'Get Started', onTap: (){}),
                  SizedBox(height:70),
                ],
            )
          ),
        ],
      )
    );
  }
}
