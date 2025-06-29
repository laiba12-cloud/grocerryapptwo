import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/view/homeview/account/card/addcreditcards.dart';
class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched=false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'My Cards'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>AddCreditCards()));
    },
      icon:Icon(Icons.add_circle_outline),)
        ],
      ),
      body: Column(
                children: [
                  Stack(
                    children:[ Column(
                      children: [
                    Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height:300,
                            width: 350,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [AppColors.lightGreen,
                                AppColors.darkGreen,],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),),),
                        Spacer(),
                      ],
                    ),
                  Column(
                    children: [
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ImageIcon(AssetImage(AppIcons.circleicon)),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height:100,
                                  width:50,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('XXXX XXXX XXXX 8790',style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        Spacer(),
                        ImageIcon(AssetImage(AppIcons.polygon,),color: AppColors.redColor,),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: AppColors.greenColor,
                        )
                      ]
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('CARD HOLDER',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,),),
                              Text('RUSSELL AUSTIN',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,),)
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text('EXPIRES',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,),
                              ),
                              Text('01/22',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,),)
                            ],
                          ),
                          SizedBox(width:20),
                          ImageIcon(AssetImage(AppIcons.polygon),color: AppColors.yellowColor,),
                          SizedBox(width:10),
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: AppColors.greenColor,
                          )
                        ],
                      ),

          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Name on the card',
              prefixIcon: Icon(Icons.account_circle),
            ),
          ),

          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Card number',
              prefixIcon: Icon(Icons.credit_card),
            ),
          ),
          Row(
            children: [
              Expanded(
                  flex: 50,
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Month/Year',
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
              )),

              Expanded(
                  flex: 50,
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'CVV',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ))
            ],
          ),
        Row(
          children: [
            Switch(value: isSwitched, onChanged: (value){
              isSwitched=value;
              setState((){});
            }),
            SizedBox(width:5),
            BlackTextWidget(text: 'Save this Card'),
            Spacer(),
            GreenTextButton(text: 'Add Credit Card', onTap: (){}),
            SizedBox(height: 20,)
          ],
        )

    ],
    ),
    ]
    ),
    ]
      )
    );
  }
}
