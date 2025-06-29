import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
import 'package:grocerryapptwo/view/homeview/account/cardtwo/two.dart';
class AddCreditcardTwo extends StatefulWidget {
  AddCreditcardTwo({super.key});

  @override
  State<AddCreditcardTwo> createState() => _AddCreditcardTwoState();
}

class _AddCreditcardTwoState extends State<AddCreditcardTwo> {
bool isSwitched=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'Add credit card'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Image.asset(AppImages.card,fit: BoxFit.cover,),
          ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 8.0),
           child: Container(
             child: TextFormField(
               decoration: InputDecoration(
                 hintText: 'Name on the Card',
                 prefixIcon: Icon(Icons.account_circle),
                 border: InputBorder.none,
               ),
             ),
           ),
         ),

    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
    child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Card Number',
              prefixIcon: Icon(Icons.credit_card),
              border: InputBorder.none,
            ),
          ),
    ),
    ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(flex:50,child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whiteColor
                  ),child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Month/Year',
                    prefixIcon: Icon(Icons.calendar_month),
                    border: InputBorder.none
                  ),
                ),
                )),
                Expanded(flex:50,child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.whiteColor
                  ),child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'CVV',
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none
                  ),
                ),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Switch(
                    activeColor: AppColors.greenColor,
                    value: isSwitched, onChanged: (value){
                  isSwitched=value;
                }),
                BlackTextWidget(text: 'Save This Card'),
              ],
            ),
          ),
          Spacer(),
          GreenTextButton(text: 'Add Credit card', onTap: (){}),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
