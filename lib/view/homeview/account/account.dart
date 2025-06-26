import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
import 'package:grocerryapptwo/view/authview/loginscreen/login.dart';
import 'package:grocerryapptwo/view/homeview/account/aboutme/aboutme.dart';
import 'package:grocerryapptwo/view/homeview/account/myaddress/myaddress.dart';
import 'package:grocerryapptwo/view/homeview/account/myorder/myorder.dart';
import 'package:grocerryapptwo/view/homeview/account/notifications/notifications.dart';
import 'package:grocerryapptwo/view/homeview/account/trackorder.dart';
import 'package:grocerryapptwo/view/homeview/account/trackorderfinal.dart';
import 'package:grocerryapptwo/view/homeview/favouitescreen.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(
            children:[
              Column(
                children: [
                  Expanded(
                    flex:20,
                            child:
                              Container(
                               // height: 200,
                                width:double.infinity,
                                decoration: BoxDecoration(
                                  color:AppColors.whiteColor
                                ),
                              ),
                                          ),
                  Expanded(flex:80,
                    child:Container(
                      height:double.infinity,
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color:AppColors.greyColor.withOpacity(0.1),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0),
                    child: CircleAvatar(
                      radius:40,
                      backgroundImage: AssetImage(AppImages.girl),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                                           padding: const EdgeInsets.only(left:30.0), child:CircleAvatar(
                            radius:12,
                            backgroundColor: Colors.green,
                            child:Icon(Icons.camera_alt,color: Colors.white,size:15),
                          ),
                          ),
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:28.0),
                    child: BlackTextWidget(text: 'Olivia Austin'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:28.0),
                    child: GreyTextWidget(text: 'oliviaaustin@gmail.com'),
                  ),
SizedBox(height:15),
                  ListTile(
                    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:(context)=> AboutMe()));
    },

                    leading: Icon(Icons.person,color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'About me'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> MyOrder()));
                    },
                    leading: ImageIcon(AssetImage(AppIcons.ordericon),color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'My Orders'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>FavouriteScreen()
                      ));
                    },
                    leading: Icon(Icons.favorite_outline,color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text:'My Favourites'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddress()));

                    },
                    leading: Icon(Icons.location_on_outlined,color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'My Address'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){

                    },
                    leading:ImageIcon(AssetImage(AppIcons.crediticon),color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'Credit Cards'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){

                    },
                    leading: ImageIcon(AssetImage(AppIcons.transactionicon),color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'Transactions'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>Notifications()
                      ));
                    },
                    leading: Icon(Icons.notifications_none,color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'Notifications'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>LoginScreen()
                      ));
                    },
                    leading: ImageIcon(AssetImage(AppIcons.signouticon),color: AppColors.greenColor,),
                    title: BlackTextWidget(textAlign: TextAlign.start, text: 'Sign out'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color:AppColors.greyColor),
                  ),
                  SizedBox(height:60),
                ],
              ),


              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //                 children:[
              //
              //         CircleAvatar(
              //             radius:60,
              //             backgroundImage:AssetImage(AppImages.LadyGrocery2),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.end,
              //           mainAxisAlignment: MainAxisAlignment.end,
              //           children: [
              //             Spacer(),
              //             SizedBox(width:10),
              //             Padding(
              //               padding: const EdgeInsets.only(left:70.0),
              //               child: CircleAvatar(
              //                 radius:12,
              //                 backgroundColor: AppColors.greenColor,
              //                 child:Icon(Icons.camera_alt,color: Colors.white,size:15)
              //               ),
              //             ),
              //             SizedBox(height:5),
              //
              //               BlackTextWidget(text: 'Olivia Austin'),
              //               GreyTextWidget(text: 'oliviaAustin@gmail.com'),
              //               Spacer(),
              //
              //       ],
              // ),
   ],
          ),
    );
  }
}
