import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/view/homeview/homescreenlast.dart';

import '../utils/constant/appicons/appicons.dart';
class Categories extends StatelessWidget {
  Categories({super.key});

  List <String> icon=[
    AppIcons.spanish,
    AppIcons.apple,
    AppIcons.balti,
    AppIcons.groceryy,
    AppIcons.bluebox,
    AppIcons.pinkbasket,
    AppIcons.babyicon,
  ];
  List <String> name=[
    'Vegetables',
    'Fruits',
    'Beverages',
    'Grocery',
    'Edible Oil',
    'Household',
    'Babycare'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomeScreenLast()));
        },
            icon:Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'Categories',), centerTitle: true,
          actions: [
        ImageIcon(AssetImage(AppIcons.listicon)),
            SizedBox(width:15),
          ],
      ),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 0.5),
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.whiteColor,
          ),
          //height:120,
          width:double.infinity,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius:40,
                child:CircleAvatar(
                  radius:25,
                    backgroundImage: AssetImage(icon[index])
                )

              ),
              GreyTextWidget(text: name[index]),
              SizedBox(height:20),
            ],
          )
        );
      },


      )
    );
  }
}
