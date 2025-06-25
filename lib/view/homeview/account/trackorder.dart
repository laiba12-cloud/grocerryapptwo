import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/Row.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';

import '../../../controller/components/greytextwidget.dart';
import '../../../controller/utils/constant/appcolors/appcolors.dart';
class Trackorder extends StatefulWidget {
 const Trackorder({super.key});

  @override
  State<Trackorder> createState() => _TrackorderState();
}

class _TrackorderState extends State<Trackorder> {
List <String> icon=[
  AppIcons.box,
  AppIcons.check,
  AppIcons.ordership,
  AppIcons.delivery,
  AppIcons.orderdeliver
];

List <String> btext=[
  'Order Placed',
  'Order Confirmed',
  'Order Shipped',
  'Out for Delivery',
  'Order Delivered'
];

List <String> gtext=[
  'october 21 2021',
  'october 21 2021',
  'october 21 2021',
  'pending',
  'pending'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        leading:
        IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'Track Order',),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical:10),
            //height:200,
            width:double.infinity,
            decoration: BoxDecoration(
              color:AppColors.whiteColor,
            ),
            child:Row(
                children:[
                  CircleAvatar(
                    radius:25,
                    backgroundColor: AppColors.greenColor.withOpacity(0.2),
                    child:(ImageIcon(AssetImage(AppIcons.ordericon))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left:8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlackTextWidget(text:'Order #90897',),
                        GreyTextWidget(text: 'placed on october 19 2021'),
                        SizedBox(height: 10),
                      ],
                    ),
                  )
                ]
            ),
          ),
          SizedBox(
            //height:double.infinity,
            child:ListView.builder(
                itemCount: icon.length,
                itemBuilder: (context,index){
              return RowClass(icon: icon[index], btext: btext[index], gtext: gtext[index]);
            })
          )
        ],
      )
    );
  }
}
