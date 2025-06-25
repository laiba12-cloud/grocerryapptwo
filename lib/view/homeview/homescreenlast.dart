import "package:flutter/material.dart";
import "package:grocerryapptwo/controller/components/blacktextwidget.dart";
import "package:grocerryapptwo/controller/components/categories.dart";
import "package:grocerryapptwo/controller/components/greytextwidget.dart";
import "package:grocerryapptwo/controller/components/productdetails.dart";
import "package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart";
import "package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart";
import "package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart";
import "package:grocerryapptwo/model/model%20class.dart";

import "../../controller/components/counter.dart";

class ModelItems{

  String? image;
  String?price;
  String?name;
  String? quantity;
  int select=0;
  bool isSelected=true;
  ModelItems({required this.image,required this.name,required this.price,required this.quantity});
}

class VoidCallBack {
  bool isSelected=false;
}

class HomeScreenLast extends StatefulWidget {
  const HomeScreenLast({super.key});

  @override
  State<HomeScreenLast> createState() => _HomeScreenLastState();
}

class _HomeScreenLastState extends State<HomeScreenLast> {
 List <String> icon=[
   AppIcons.spanish,
   AppIcons.apple,
   AppIcons.balti,
   AppIcons.groceryy,
   AppIcons.bluebox,
   AppIcons.pinkbasket
 ];
 List <String> name=[
'Vegetables',
   'Fruits',
   'Beverages',
   'Grocery',
   'Edible Oil',
   'Household'
 ];
 List <ModelItems> listitems=[
   ModelItems(image: AppImages.peach, name: 'Fresh Peach', price: '\$ 8.00', quantity: 'Dozen',),
   ModelItems(image: AppImages.avacado, name: 'Avacado', price: '\$ 7.00', quantity: '2.0 lbs'),
   ModelItems(image: AppImages.pineapple, name: 'Pineapple', price:'\$ 9.90', quantity: '1.50 lbs'),
   ModelItems(image: AppImages.grapes, name: 'Grapes', price: '\$ 7.05', quantity: '5.0 lbs'),
   ModelItems(image: AppImages.pomegranate, name:'Pomegranate', price:'\$2.09', quantity: '1.50 lbs'),
   ModelItems(image: AppImages.brocoli, name: 'Fresh Brocolli', price: '\$3.00', quantity: '1 kg'),
 ];
 double count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children:[
            Padding(
        padding: const EdgeInsets.only(top:40.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
        Icon(Icons.search),
        GreyTextWidget(text: 'Search Keywords'),
        ImageIcon(
          AssetImage(
            AppIcons.listicon,
          )
        ),
        ]
        ),
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container
                (
                height:300,
                width:380,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(AppImages.food2),
                  fit:BoxFit.cover,)
                ),
                child:Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top:80),
                      child: BlackTextWidget(text: '20% off on Your \n first purchase', ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children:[
                          Container(
                            height:20,
                            width:50,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(30),
                              color:AppColors.lightGreen,
                            ),
                          ),
                          SizedBox(width:20),
                          CircleAvatar(
                            radius:10,
                           backgroundColor: Colors.white,
                          ),
                          SizedBox(width:5),
                          CircleAvatar(
                            radius:10,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width:5),
                          CircleAvatar(
                            radius:10,
                            backgroundColor: Colors.white,
                          ),
                        ]
                      ),
                    ),
                    SizedBox(height:30),
                  ]
                ),
              ),
            ),
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:BlackTextWidget(text: 'Categories',)
                ),
                Spacer(),
                IconButton(onPressed:(){
                  Navigator.push(
                  context,MaterialPageRoute(
                  builder:(context)=>Categories()
                  )
                  );
                },
                    icon:Icon(Icons.arrow_forward_ios_outlined)),
              ]
            ),
SizedBox(height:60,
child:ListView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: 6,
  itemBuilder: (context,index){
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              CircleAvatar(
                radius:10,
              backgroundImage: AssetImage(icon[index]),),
            Text(name[index]),
          ]
        ),
      ),
    );
  },
)
),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BlackTextWidget(text: 'Featured products'),
                  Spacer(),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GridClass())
                    );
                  },
                      icon: Icon(Icons.arrow_forward_ios_outlined)
                  ),
                ],
              ),
            ),
            SizedBox(height:400,
            child:
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7
              ),
              itemCount: 6,
              itemBuilder: (context,index){
                return   SizedBox(
                    height:double.infinity,
                    width:double.infinity,
                    child: InkWell(
                      onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdetails(price: listitems[index].price.toString(), name: listitems[index].name.toString(), description: 'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing', images: listitems[index].image.toString(), quantity: listitems[index].quantity.toString(),)));
                      },
                      child:Container(
                      height:double.infinity,
                      //width:double.infinity,
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
                            height:20,
                            width:double.infinity,
                            child: CountClass())
                                      ],

                                      ),
                                      ),
                ),
                    ),
                );
              },
            ),
            )

          ]
        ),
      )
    );
  }
}




