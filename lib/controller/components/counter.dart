import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
class CountClass extends StatefulWidget {
  CountClass({super.key});

  @override
  State<CountClass> createState() => _CountClassState();
}

class _CountClassState extends State<CountClass> {
  double count=0;
increment(){
  count++;
  setState(() {
  });
}
decrement(){
  if(count>1) {
    count--;
    setState(() {});
  }
}
  @override
  Widget build(BuildContext context) {
  // return Row(
  //   children:[
  //     GreyTextWidget(text: 'Quantity'),
  //     Spacer(),
  //     Container(
  //       height:60,
  //       width:double.infinity,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.only(topLeft:Radius.circular(10),
  //         topRight:Radius.circular(10),
  //       ),
  //       border:Border.all()
  //     )
  //     ),
  //   ]
  // );


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       IconButton(onPressed: (){
         decrement();
       }, icon:Icon(Icons.remove,size:15)),
       Container(
         height:20,
         width:1,
         decoration: BoxDecoration(
           color: AppColors.greyColor.withOpacity(0.3),
         ),
       ),

       SizedBox(width:10),
       Text('$count',style: TextStyle(
         fontSize:15
       ),),
       SizedBox(width:10),
       Container(
         height:20,
         width:1,
         decoration: BoxDecoration(
           color: AppColors.greyColor.withOpacity(0.3),
         ),
       ),
       SizedBox(width:10),
       IconButton(onPressed: (){
         increment();
       }, icon: Icon(Icons.add,size:15)),
     ],
    );
  }
}
