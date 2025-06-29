import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
import 'package:grocerryapptwo/view/bottombar.dart';
import 'package:grocerryapptwo/view/homeview/homescreenlast.dart';


class  FavouriteScreen extends StatefulWidget {
  FavouriteScreen({super.key
  });


  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
class _FavouriteScreenState extends State<FavouriteScreen> {

List <String> image=[
  AppImages.brocoli,
  AppImages.avacado,
  AppImages.pineapple,
  AppImages.peach,
  AppImages.grapes,
  AppImages.pomegranate
];
List <String> name=[
  'Fresh Brocolli',
  'Avacado',
  'pineapple',
  'Peach',
  'Grapes',
  'pomegranate'
];
List <String> quantity=[
  '1 kg',
  '2.0 lbs',
  '1.50 lbs',
  'Dozen',
  '5.0 lbs',
  '1.50 lbs'
];
List <String> price=[
  '\$3.00',
  '\$ 7.00',
  '\$ 9.90',
  '\$ 8.00',
  '\$ 7.05',
  '\$2.09'
];
  double count = 0;
  increment() {
    count++;
    setState(() {});
  }

  decrement() {
    if (count > 1) {
      count--;
      setState(() {});
    }
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
            title: Text('Favourite'),
            centerTitle: true,
          ),
          body: SizedBox(height:double.infinity,
            child:ListView.builder(
                itemCount: 6,
                itemBuilder: (context,index) {
              return Container
                (
                  height: 150,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.lightGreenAccent.withOpacity(
                              0.5),
                          child: Image.asset(image[index], fit: BoxFit.cover),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                price[index], style: TextStyle(color: Colors
                                  .green),
                              ),
                            ),
                            BlackTextWidget(text: name[index],),
                            GreyTextWidget(text: quantity[index]),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            IconButton(onPressed: () {
                              increment();
                            }, icon: Icon(Icons.add, size: 15)),
                            Text('$count', style: TextStyle(
                                fontSize: 15
                            ),),
                            IconButton(onPressed: () {
                              decrement();
                            }, icon: Icon(Icons.remove, size: 15)),
                          ],
                        )
                      ],
                    ),
                  )
              );
            }
            )
          ),
      );
    }
  }
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
