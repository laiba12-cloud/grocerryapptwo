import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/counter.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
import 'package:grocerryapptwo/view/homeview/homescreenlast.dart';
class ModelItems{

  String? image;
  String?price;
  String?name;
  String? quantity;
  ModelItems({required this.image,required this.name,required this.price,required this.quantity});
}
class GridClass extends StatefulWidget {
  GridClass({super.key});

  @override
  State<GridClass> createState() => _GridClassState();
}

class _GridClassState extends State<GridClass> {
List <ModelItems> listitems=[
  ModelItems(image: AppImages.peach, name: 'Fresh Peach', price: '\$ 8.00', quantity: 'Dozen'),
ModelItems(image: AppImages.avacado, name: 'Avacado', price: '\$ 7.00', quantity: '2.0 lbs'),
  ModelItems(image: AppImages.pineapple, name: 'Pineapple', price:'\$ 9.90', quantity: '1.50 lbs'),
  ModelItems(image: AppImages.grapes, name: 'Grapes', price: '\$ 7.05', quantity: '5.0 lbs'),
  ModelItems(image: AppImages.pomegranate, name:'Pomegranate', price:'\$2.09', quantity: '1.50 lbs'),
  ModelItems(image: AppImages.brocoli, name: 'Fresh Brocolli', price: '\$3.00', quantity: '1 kg'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(onPressed:(){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomeScreenLast()));
        },
            icon: Icon(Icons.arrow_back)),
        title:BlackTextWidget(text: 'Fruits'),
        centerTitle: true,
         actions:[
           ImageIcon(AssetImage(AppIcons.listicon)),
         SizedBox(width:15),
         ],
      ),
      body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: 6,
          itemBuilder: (context,index){
            return   Container(
              height:double.infinity,
              //width:double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height:700,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.whiteColor,
                  ),
                  child: Column(
                      children:[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.favorite_outlined,color:Colors.red)),
                          ],
                        ),
                        Container(
                    height:60,
                    //width:50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.whiteColor,
                    //
                    ),
                    child:Image.asset(listitems[index].image.toString()
                    ),
                        ),
                        Text(listitems[index].price.toString()),
                        BlackTextWidget(text: listitems[index].name.toString()),
                        Text(listitems[index].quantity.toString()),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.card_travel_sharp,),
                            Text('Add to Cart'),
                          ],
                        ),
                        Container(
                          child:CountClass()
                        )
                        ],
                    ),
                ),
              ),
            );
          },
    ),
    );
  }
}
