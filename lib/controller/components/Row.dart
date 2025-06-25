import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
class RowClass extends StatefulWidget {
  final String icon;
  final String btext;
  final String gtext;
  const RowClass({super.key,required this.icon,required this.btext,required this.gtext});

  @override
  State<RowClass> createState() => _RowClassState();
}

class _RowClassState extends State<RowClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height:100,
      width:double.infinity,
      decoration: BoxDecoration(
        color:AppColors.whiteColor,
      ),
      child:Row(
        children:[
          CircleAvatar(
            radius:25,
            backgroundColor: AppColors.greenColor.withOpacity(0.2),
            child:(ImageIcon(AssetImage(widget.icon))),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10,top:30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlackTextWidget(text:widget.btext,),
                GreyTextWidget(text: widget.gtext),
                SizedBox(height: 20),
              ],
            ),
          )
        ]
      ),
    );
  }
}
