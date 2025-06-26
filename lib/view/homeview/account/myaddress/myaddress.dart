import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
class MyAddress extends StatefulWidget {
  MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
bool isExpanded=false;
bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back),
      ),
        title: BlackTextWidget(text: 'My Address'),
        centerTitle: true,
          actions: [

                Icon(Icons.add_circle),
                SizedBox(width:8),
              ],
            ),

      body: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context,index){
                return ExpansionTile(
                  leading: CircleAvatar(radius:30,
                  backgroundColor: Colors.green.shade100,
                  child:ImageIcon(AssetImage(AppIcons.address))
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 65.0),
                    child: BlackTextWidget(text: 'Rusali Austin'),
                  ),

                    onExpansionChanged: (expanded) {
                      isExpanded = expanded;
                      setState(() {});
                    },

                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GreyTextWidget( text: '2811 Crescent Day.LA part'),
                    GreyTextWidget(text: 'California,United states 77571'),
                    Text('+1 202 555 0142',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                  trailing:isExpanded?IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_up,color:Colors.green)):
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_down,color: Colors.green,)),
                  children: [
                Card(
                child:TextFormField(
                decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText:'Name',
                    prefixIcon: Icon(Icons.account_circle))
                ),
                ),
                Card(
                child:TextFormField(
                decoration: InputDecoration(
                border:InputBorder.none,
                hintText:'Name',
                prefixIcon: ImageIcon(AssetImage(AppIcons.address)),)
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex:50,
                        child: Card(
                        child:TextFormField(
                        decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:'City',
                        prefixIcon:  ImageIcon(AssetImage(AppIcons.city))
                        ),
                        )
                        ),
                      ),
                      Expanded(
                        flex:50,
                        child: Card(
                            child:TextFormField(
                              decoration: InputDecoration(
                                  border:InputBorder.none,
                                  hintText:'Zip Code',
                                  prefixIcon:  ImageIcon(AssetImage(AppIcons.zipcode))
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                child:TextFormField(
                decoration: InputDecoration(
                border:InputBorder.none,
                hintText:'Country',
                prefixIcon: ImageIcon(AssetImage(AppIcons.country))
                ),
                )
                ),
                Card(
                child:TextFormField(
                decoration: InputDecoration(
                border:InputBorder.none,
                hintText:'Phone Number',
                prefixIcon: Icon(Icons.call,)
                ),
                )
                ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Switch(
                              activeColor: AppColors.greenColor,
                              value:isSwitched , onChanged: (value){
                            isSwitched=value;
                            setState(() {
                            });
                          }),
                          BlackTextWidget(text: 'Make Default')
                        ],
                      ),
                    )
                ]
                );
              }
              ),
            // Spacer(),
            // GreenTextButton(text: 'Save Settings', onTap: (){}),
            // SizedBox(height:20)

    );
  }
}
