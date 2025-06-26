import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/passwordclass.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/view/homeview/account/myorder/ordersuccess.dart';
class AboutMe extends StatelessWidget {
  AboutMe({super.key});
TextEditingController name=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController contact=TextEditingController();
// List <String> htext=[
//
//
// ];
// List <String> picon=[
//   Icons.account_circle,
// ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlackTextWidget(text: 'About Me'),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: BlackTextWidget(text: 'Password Details'),
          ),
          SizedBox(height:10),
         Container(
                  height:40,
                  width:double.infinity,
                  color: AppColors.whiteColor,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle:TextStyle(
                          color:Colors.grey
                      ),
                      hintText: 'Russeil Austin',
                      prefixIcon: Icon(Icons.account_circle, color: Colors
                          .grey),

                    ),
                  ),
                ),
          SizedBox(height:10),
          Container(
            height:40,
            width:double.infinity,
            color: AppColors.whiteColor,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:TextStyle(
                    color:Colors.grey
                ),
                hintText: 'Russeil.partner@gmail.com',
                prefixIcon: Icon(Icons.mail, color: Colors
                    .grey),

              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            height:40,
            width:double.infinity,
            color: AppColors.whiteColor,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:TextStyle(
                    color:Colors.grey
                ),
                hintText: '+1 202 055 0142',
                prefixIcon: Icon(Icons.call, color: Colors
                    .grey),

              ),
            ),
          ),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: BlackTextWidget(text: 'Change Passwords'),
          ),
          SizedBox(height:10),
          Container(
            height:40,
            width:double.infinity,
            color: AppColors.whiteColor,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:TextStyle(
                    color:Colors.grey
                ),
                hintText: 'Current Password',
                prefixIcon: ImageIcon(AssetImage(AppIcons.lock), color: Colors
                    .grey),

              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            height:40,
            width:double.infinity,
            color: AppColors.whiteColor,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: PasswordClass()
          ),
          SizedBox(height:10),
          Container(
            height:40,
            width:double.infinity,
            color: AppColors.whiteColor,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:TextStyle(
                    color:Colors.grey
                ),
                hintText: 'Confirm Password',
                prefixIcon: ImageIcon(AssetImage(AppIcons.lock), color: Colors
                    .grey),

              ),
            ),
          ),
          Spacer(),
          GreenTextButton(text: 'Save Setttings', onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSuccess()));
          }),
          SizedBox(height:20)
        ],
      )
    );
  }
}
