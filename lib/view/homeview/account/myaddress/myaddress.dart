import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/Container.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/simplecontainer.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
class Myaddress extends StatefulWidget {
  Myaddress({super.key});

  @override
  State<Myaddress> createState() => _MyaddressState();
}

class _MyaddressState extends State<Myaddress> {
List <String> icon=[
  AppIcons.track,
  AppIcons.person,
  AppIcons.location,
  AppIcons.city,
  AppIcons.zipcode,
  AppIcons.country,
  AppIcons.call,
  AppIcons.track
];
List <String> text=[
  'name',
  'address',
  'city',
  'zip code',
  'country',
  'phone number'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor.withOpacity(0.2),
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'My address'),
        centerTitle: true,
        actions: [
          Icon(Icons.add_circle),
          SizedBox(width:10),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:[
            Container(
              height:500,
              width:double.infinity,
              decoration: BoxDecoration(
                color:AppColors.whiteColor
              ),
              child:Column(
                children: [
                  Container(
                    height:10,
                    width:40,
                    decoration: BoxDecoration(
                      color:AppColors.greenColor.withOpacity(0.2)
                    ),
                    child:Text('Default',style: TextStyle(
                      color:Colors.green,
                    ),)
                  ),
                  Row(
                    children: [

                    ],
                  ),
                  Divider(thickness: 0.1,),
                  SizedBox(height:300,child:ListView.builder(itemBuilder: (context,index){
                    return Simplecontainer
                  (width: double.infinity.toString(), icon:icon[index].toString(), text: text[index].toString());})
                  ),],
              )
            )
          ]
        ),
      ),
    );
  }
}
