import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
class WriteREviews extends StatelessWidget {
  const WriteREviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'Write Reviews'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlackTextWidget(text: 'What Do You Think?'),
          SizedBox(height: 10,),
            GreyTextWidget(text: 'Please give your rating by clicking on \n the stars below'),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,color: Colors.yellow,size:40),
              Icon(Icons.star,color: Colors.yellow,size: 40,),
                Icon(Icons.star,color: Colors.yellow,size: 40,),
                Icon(Icons.star,color: Colors.yellow,size: 40,),
        
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18.0),
              child: Container(
                height:200,
                width:450,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText: 'Tell us about Your Experience',
                    prefixIcon: Icon(Icons.edit),

                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            GreenTextButton(text: 'Start Shopping', onTap: (){}),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
