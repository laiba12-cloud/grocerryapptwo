import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
class GreyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const GreyButton({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
          height:40,
          width:double.infinity,
          margin:EdgeInsets.symmetric(horizontal:20),
          decoration:BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.circular(5),
            border:Border.all(width:2,
                color:Colors.grey),
          ),
          child:Row(
            children: [
              SizedBox(width:10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AppIcons.google,),
              ),
              SizedBox(width:15),
              Text(text,style:TextStyle(
                color:Colors.black,
              )),
            ],
          )),
    );
  }
}
