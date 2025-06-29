import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
class Transactions extends StatefulWidget {
  Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  List <String> price=[
    '\$89',
    '\$109',
    '\$567',
    '\$567',
    '\$109',
    '\$89'
  ];

List <String> icon=[
  AppIcons.circleicon,
  AppIcons.visa,
  AppIcons.paypal,
  AppIcons.paypal,
  AppIcons.visa,
  AppIcons.circleicon
];

List <String> btext=[
 'Master Card',
 'Master Card',
  'PayPal',
  'PayPal',
  'Master Card',
  'Master Card'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: ()
    {
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back)
      ),
      title: BlackTextWidget(text: 'Transactions'),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: 6,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.lightgrey,
              //backgroundColor: AppColors.greyColor,
              child: ImageIcon(AssetImage(icon[index].toString())),
            ),
            title: BlackTextWidget(textAlign:TextAlign.start,text: btext[index].toString()),
            subtitle: GreyTextWidget(textAlign:TextAlign.start,text: 'Dec 12 2021 at 10:00pm'),
            trailing: Text(price[index].toString(),style: TextStyle(
              color: AppColors.greenColor,
              fontWeight: FontWeight.bold,
              fontSize:15
            ),),
          ),
        );
      })
    );
  }
}
