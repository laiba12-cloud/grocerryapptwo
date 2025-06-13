import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/Container.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
List <String> messages=[
  'Vegetables',
  'Fruits',
  'Beverages',
  'Grocery',
  'Edibilwil',
  'household'
];
List <String> images=[
'assets/images/peach-24 1.png',
'assets.images/aocado-2 1.png',
'assets/images/pineapple.png',
  'assets/images/grapes-31.png',
  'assets/images/pomegranate-11.png',
  'assets/images/green-fresh-broccoli.png'
];
List <String> icons=[
  'assets/icons/spanish.png',
  'assets/icons/apple.png',
  'assets/icons/purple balti.png',
  'assets/icons/balti.png',
  'assets/icons/bluebox.png',
  'assets/icons/pinkbasket.png'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          //1st row
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Icon(Icons.search),
                GreyTextWidget(text: 'search keywords'),
                Icon(Icons.menu),
              ]
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage(AppImages.food2),
              fit:BoxFit.cover)
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                BlackTextWidget(text: '20% off on your first purchase'),
                SizedBox(height:20),
                //2nd row
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children:[
                      Container(
                        height:5,
                        width:10,
                        decoration: BoxDecoration(
                          color:Colors.green,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(width:5),
                      CircleAvatar(
                        radius:8,
                        backgroundColor: Colors.black,
                        child:CircleAvatar(
                          radius:4,
                          backgroundColor: Colors.white,
                        )
                      ),
                      SizedBox(width:5),
                      CircleAvatar(
                          radius:8,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius:4,
                            backgroundColor: Colors.white,
                          )
                      ),
                      SizedBox(width:5),
                      CircleAvatar(
                          radius:8,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius:4,
                            backgroundColor: Colors.white,
                          )
                      )
                    ]
                  ),
                ),

              ]
            )
          ),
          //3rd row
          Row(
          children:[
          BlackTextWidget(text: 'Categories'),
            Spacer(),
            Icon(Icons.arrow_back_ios),
        ]
      ),
          Row(
    children:[
    ListView.builder(
    itemCount:messages.length ,
      itemBuilder: (context,index){
      //4th row
      return Row(
        children:[
        Column(
          children:[
            CircleAvatar(
              radius:10,
              backgroundImage: AssetImage('$icons[index]'),
            ),
            Spacer(),
            BlackTextWidget(text: '$messages[index]'),
          ]
        )
        ]
      );
      }
          ),
    ],
          ),
       //5th row
       Row(
         children: [
           BlackTextWidget(text: 'Featured Products'),
           Spacer(),
           Icon(Icons.arrow_back_ios),
         ],
       ),
          //6th row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              ContainerClass(price: ' 8.00', image:AppImages.broccoli, name: 'Fresh peach ', quantity: 'dozen'),
            ContainerClass(price: '10.00', image: AppImages.vegetables, name: 'vegetables', quantity: 'dozen'),
              //lastrow
            ]
          ),

    ],
    ),
    );
  }
}
