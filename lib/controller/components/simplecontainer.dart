import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
class Simplecontainer extends StatefulWidget {
  final String width;
  final String icon;
  final String text;
  Simplecontainer({super.key,required this.width,required this.icon,required this.text});

  @override
  State<Simplecontainer> createState() => _SimplecontainerState();
}

class _SimplecontainerState extends State<Simplecontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:20,
       // width:width,
        decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(0.1),
      ),
      child:Row(
        children:[
          (ImageIcon(AssetImage(widget.icon))),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: GreyTextWidget(text: widget.text),
          )
        ]),

    );
  }
}

