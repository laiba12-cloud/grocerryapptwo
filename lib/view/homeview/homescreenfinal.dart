import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class HomeScreenFinal extends StatelessWidget {
  const HomeScreenFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:[
            SizedBox(height:50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Icon(Icons.search),
                GreyTextWidget(text: 'Search Keywords'),
                ImageIcon(AssetImage(
                  AppIcons.listicon,
                ),),

              ]
            ),
            SizedBox(height:10),
            Container(
              height:300,
              width:300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(AppImages.food2,),
                fit:BoxFit.cover,)
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:50),
                  BlackTextWidget(text: '20% discounts'),
                  BlackTextWidget(text: 'avail offer'),
                ],
              )
            ),
            Row(
              children:[
                Text('hi'),
                SizedBox(width:10),
                Text('bye'),
              ],
            )
          ]
        ),
      )
    );
  }
}

