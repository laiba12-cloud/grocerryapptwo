import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';

import '../utils/constant/appcolors/appcolors.dart';
import 'blacktextwidget.dart';

class ModelItems{

  String? image;
  String?price;
  String?name;
  String? quantity;
  ModelItems({required this.image,required this.name,required this.price,required this.quantity});
}
class ContainerClass extends StatefulWidget {
 const ContainerClass({super.key});
 
  @override
  State<ContainerClass> createState() => _ContainerClassState();
}

class _ContainerClassState extends State<ContainerClass> {
  List <ModelItems> listitems=[
    ModelItems(image: AppImages.peach, name: 'Fresh Peach', price: '\$ 8.00', quantity: 'Dozen'),
    ModelItems(image: AppImages.avacado, name: 'Avacado', price: '\$ 7.00', quantity: '2.0 lbs'),
    ModelItems(image: AppImages.pineapple, name: 'Pineapple', price:'\$ 9.90', quantity: '1.50 lbs'),
    ModelItems(image: AppImages.grapes, name: 'Grapes', price: '\$ 7.05', quantity: '5.0 lbs'),
    ModelItems(image: AppImages.pomegranate, name:'Pomegranate', price:'\$2.09', quantity: '1.50 lbs'),
    ModelItems(image: AppImages.brocoli, name: 'Fresh Brocoli', price: '\$3.00', quantity: '1 kg'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Text('hi');//
      //
      //
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children:[
      //     Image.asset(image),
      //     Text(price),
      //     Text(name),
      //     Text(quantity),
      // //     Divider(thickness:1.5),
      //    ],
      //       ),
      //     );
  }
}
