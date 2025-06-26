import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'Order Success'),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:200),
          ImageIcon(AssetImage(AppIcons.shopbag),color: AppColors.greenColor,size: 70,),
          BlackTextWidget(text: 'Your Order Was \n succesfull !'),
          GreyTextWidget(text: 'You will Get a response within \n Few minutes'),
          Spacer(),
          GreenTextButton(text: 'Track Order', onTap: (){}),
          SizedBox(height:20)
        ],
      )
    );
  }
}
