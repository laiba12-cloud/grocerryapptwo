import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
class ShippingAddress extends StatefulWidget {
  ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  bool isSwitched=false;

// List <String> value=[
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'Shipping Address'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.greenColor,
                    child: Icon(Icons.check),
                  ),
                  GreyTextWidget(text: 'DELIVERY'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.greenColor,
                    child: Text('2')
                  ),
                  GreyTextWidget(text: 'ADDRESS'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.greenColor,
                    child: Text('3')
                  ),
                  GreyTextWidget(text: 'PAYMENT'),
                ],
              )
            ],
          ),
SizedBox(height:10),
Card(
  child: TextFormField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintStyle:TextStyle(
          color:Colors.grey
      ),
      hintText: 'Name',
      prefixIcon: Icon(Icons.account_circle,color: Colors
          .grey),
    ),
  ),
),
          Card(child:TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle:TextStyle(
                  color:Colors.grey
              ),
              hintText: 'Email Address',
              prefixIcon: Icon(Icons.mail,color: Colors
                  .grey),
            ),
          ),
          ),
          Card(child:TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle:TextStyle(
                  color:Colors.grey
              ),
              hintText: 'Call',
              prefixIcon: Icon(Icons.call,color: Colors
                  .grey),
            ),
          ),
          ),
          Card(child:TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle:TextStyle(
                  color:Colors.grey
              ),
              hintText: 'Address',
              prefixIcon: ImageIcon(AssetImage(AppIcons.address),color: Colors
                  .grey),
            ),
          ),
          ),
          Card(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:TextStyle(
                    color:Colors.grey
                ),
                hintText: 'Zip Code',
                prefixIcon: ImageIcon(AssetImage(AppIcons.zipcode),color: Colors
                    .grey),
              ),
            ),
          ),
          Card(child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle:TextStyle(
                  color:Colors.grey
              ),
              hintText: 'City',
              prefixIcon: ImageIcon(AssetImage(AppIcons.city
              ),color: Colors
                  .grey),
            ),
          ),
          ),
          Card(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:TextStyle(
                    color:Colors.grey
                ),
                hintText: 'Country',
                prefixIcon: ImageIcon(AssetImage(AppIcons.country),color: Colors
                    .grey),
              ),
            ),
          ),
         Row(
           children: [
             Switch(value:isSwitched , onChanged: (value){
               isSwitched=value;
               setState((){});
             }),
             SizedBox(width:3),
             Text('Save this address',style: TextStyle(fontWeight: FontWeight.bold),)
           ],
         ),
          Spacer(),
          GreenTextButton(text: 'Next', onTap: (){}),
          SizedBox(height: 15,)


          // SizedBox(
          //   height: 100,
          //   child: ListView.builder(itemBuilder: (context,index){
          //     return Column(
          //       children: [
          //         CircleAvatar(
          //           radius: 20,
          //             backgroundColor: AppColors.greenColor,
          //           child: Text(''),
          //         )
          //       ],
          //     );
          //   }),
          // )
        ],
      ),
    );
  }
}
