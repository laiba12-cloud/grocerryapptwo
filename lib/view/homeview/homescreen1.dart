import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/Container.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
'assets/images/aocado-2 1.png',
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
      body:
      SingleChildScrollView(
       // scrollDirection: Axis.vertical,
        child: Column(
          children:[
            SizedBox(height: 40,),
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
                height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage(AppImages.food2),
                fit:BoxFit.cover)
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  BlackTextWidget(text: '20% off on your first purchase'),
                  SizedBox(height:10),
                  //2nd row
                  Padding(
                    padding: const EdgeInsets.only(left: 05),
                    child: Row(
                      children:[
                        Container(
                          height:15,
                          width:10,
                          decoration: BoxDecoration(
                            color:Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(width:5),
                        CircleAvatar(
                          radius:4,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius:2,
                            backgroundColor: Colors.white,
                          )
                        ),
                        SizedBox(width:5),
                        CircleAvatar(
                            radius:4,
                            backgroundColor: Colors.black,
                            child:CircleAvatar(
                              radius:2,
                              backgroundColor: Colors.white,
                            )
                        ),
                        SizedBox(width:5),
                        CircleAvatar(
                            radius:4,
                            backgroundColor: Colors.black,
                            child:CircleAvatar(
                              radius:2,
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
            SizedBox(height: 10,),
            Row(
            children:[
            BlackTextWidget(text: 'Categories'),
              Spacer(),
              Icon(Icons.arrow_back_ios),
          ]
        ),
            SizedBox(height: 10,),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage(icons[index]),
                        ),
                        SizedBox(height: 3),
                        BlackTextWidget(text: messages[index],size: 12,),
                      ],
                    ),
                  );
                },
              ),
            ),

            //5th row
         Row(
           children: [
             BlackTextWidget(text: 'Featured Products',size: 18,),
             Spacer(),
             Icon(Icons.arrow_forward_ios),
           ],
         ),
            SizedBox(height: 10,),
            //6th row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                ContainerClass(price: '\$ 8.00', image:AppImages.milk, name: 'Fresh peach ', quantity: 'dozen'),
              ContainerClass(price: '\$ 10.00', image: AppImages.mango, name: 'vegetables', quantity: 'dozen'),
                //lastrow
              ]
            ),

            ],
            ),
      ),
    );
  }
}
