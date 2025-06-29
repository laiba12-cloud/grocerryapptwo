import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';

import '../../../../controller/utils/constant/appcolors/appcolors.dart';
class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = false;
List <String> btext=[
  'Allow Notifications',
  'Email Notifications',
  'Order Notifications',
  'General Notifications'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),),
        title: BlackTextWidget(text: 'Notifications'),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: btext.length,
          itemBuilder:(context,index){
        return Card(
          child: ListTile(
            title: BlackTextWidget(text:btext[index].toString()),
            subtitle: GreyTextWidget(text: 'Lorem Ipsum dolor sit amet,consetetur sadi \n pscing elitr,sed diam nonumym'),
            trailing: Switch(activeColor: AppColors.greenColor,
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                  setState(() {});
                }),
          ),
        );
      })
    );
  }
}


