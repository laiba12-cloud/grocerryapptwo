import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/counter.dart';
import 'package:grocerryapptwo/controller/components/greenbutton.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
import 'package:grocerryapptwo/view/homeview/homescreenlast.dart';

class Productdetails extends StatefulWidget {
  final String images;
  final String price;
  final String name;
  final String description;
  final String quantity;

   Productdetails({
    super.key,
    required this.images,
    required this.price,
    required this.name,
    required this.description,
     required this.quantity
  });

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:20),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context
                    );
                  },
                  icon: Icon(Icons.arrow_back,size:30),
                ),
                Spacer(),
                //BlackTextWidget(text: '')
              ],
            ),
            Container(
              height:250,
                width:double.infinity,
                child: Image.asset(widget.images, fit: BoxFit.cover)
            ),
            SizedBox(height:10),
            Container(
               // height:240,
                width:double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(widget.price,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.favorite_outline),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child: BlackTextWidget(text: widget.name,),
        
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GreyTextWidget(text: widget.quantity),
            ),
        
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Container(
               // height:double.infinity,
                  width:double.infinity,
                  child: GreyTextWidget(text: widget.description)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                margin:  EdgeInsets.symmetric(horizontal: 8.0),
                child:Row(
                  children:[
                    BlackTextWidget(text: 'Quantity',),
                Spacer(),
                Container(
                    height:60,
                    child: CountClass()),
                ],
                ),
              ),
            ),
        GreenTextButton(text: 'Add to cart', onTap: (){}
        ),
            SizedBox(height:20),
      ],
    ),
            ),
      ],
        ),
      ),
    );
  }
}