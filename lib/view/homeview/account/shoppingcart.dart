import 'package:flutter/material.dart';

import '../../../controller/components/blacktextwidget.dart';
import '../../../controller/components/greentextbutton.dart';
import '../../../controller/components/greytextwidget.dart';
import '../../../controller/utils/constant/appcolors/appcolors.dart';
import '../../../controller/utils/constant/appicons/appicons.dart';
class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
          title: BlackTextWidget(text: 'Shopping Cart'),
          centerTitle: true,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:200),
            ImageIcon(AssetImage(AppIcons.shopbag),color: AppColors.greenColor,size: 70,),
            BlackTextWidget(text: 'Your Cart is Empty!'),
            GreyTextWidget(text: 'You will Get a response within \n Few minutes'),
            Spacer(),
            GreenTextButton(text: 'Start Shopping', onTap: (){}),
            SizedBox(height:20)
          ],
        )
    );
  }
}
