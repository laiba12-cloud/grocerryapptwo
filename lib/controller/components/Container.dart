import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class ContainerClass extends StatelessWidget {
  String price;
  String image;
  String name;
  String quantity;
   ContainerClass({super.key,required this.price,required this.image,required this.name,required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
    // height: 60,
      width: 140,
      // height:double.infinity,
      //width:double.infinity,
      decoration:BoxDecoration(
        border:Border.all(width:2,
        color:Colors.black),
        borderRadius:BorderRadius.circular(10),
        color:Colors.white,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Image.asset(image),
          Text(price),
          Text(name),
          Text(quantity),
          Divider(thickness:1.5),
         ],
            ),
          );
  }
}
