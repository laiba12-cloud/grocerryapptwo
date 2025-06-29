import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/view/bottombar.dart';

import '../../../controller/components/blacktextwidget.dart';
import '../../../controller/components/greenbutton.dart';
import '../../../controller/components/greytextwidget.dart';
class SplashScreenfour extends StatelessWidget {
  const SplashScreenfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height:double.infinity,
        width:double.infinity,
decoration:BoxDecoration(
        image:DecorationImage(image:AssetImage('assets/images/vegetables.png'),
        fit:BoxFit.cover,),
      ),
    child:Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
    SizedBox(height:50),
    BlackTextWidget(text:'Buy Quality \n Dairy Products'),
    SizedBox(height:20),
    GreyTextWidget(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
    Spacer(),
    GreenTextButton(text: 'Get Started', onTap:   (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));

  }),
    SizedBox(height:50),
    ]
    )
      )
    );
  }
}
