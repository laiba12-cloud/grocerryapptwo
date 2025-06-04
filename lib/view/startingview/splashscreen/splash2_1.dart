import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';

import '../../../controller/components/blacktextwidget.dart';
import '../../../controller/components/greentextbutton.dart';
import '../../../controller/components/greytextwidget.dart';
class Splashtwo_one extends StatelessWidget {
  const Splashtwo_one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
           AppImages.grocery,
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
