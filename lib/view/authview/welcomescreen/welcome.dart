import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greenbutton.dart';
import 'package:grocerryapptwo/controller/components/greybutton.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/Mask Group.png', fit: BoxFit.cover),
          ),
          Column(children: [
            SizedBox(height: 20,),
            Row(children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,))
            ],),
            Spacer(),
            Container(
            //         height: 300,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Column(children: [
              BlackTextWidget(text: 'Welcome'),
                GreyTextWidget(
                    text:
                    'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
                SizedBox(height: 10),
                GreyButton(text: 'Continue With Google', onTap: () {}),
                SizedBox(height: 10),
                GreenButton(text: 'Create an Account', onTap: () {}),





              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,top:10.0),
              child: Row(
                children: [
                  Text('Dont have an account',style:TextStyle(color:Colors.grey)),
                  Icon(Icons.question_mark_outlined,color:Colors.grey,size:15),
                  SizedBox(width:5),
                  Text('SignUp',style:TextStyle(color:Colors.black,))
                ],
              ),
            ),
            SizedBox(height:40),

          ]
          ),

          ],
        ),

    );
  }
}

// Column(children: [
// SizedBox(height: 80),
// Row(children: [
// Icon(Icons.arrow_back_outlined, color: Colors.white),
// SizedBox(width: 30),
// Text('Welcome', style: TextStyle(color: Colors.white)),
// ]),
// Spacer(),
// Container(
// height: 300,
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(20),
// topRight: Radius.circular(20),
// ),
// color: Colors.red),
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// BlackTextWidget(text: 'Welcome'),
// SizedBox(height: 10),
// GreyTextWidget(
// text:
// 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
// SizedBox(height: 10),
// // GreenButton(text: 'Create an Account', onTap: () {}),
// SizedBox(height: 10),
// GreyButton(text: 'Continue With Google', onTap: () {}),
// Row(children: [
// Text('Already Have an Account?'),
// Text('Login',
// style: TextStyle(
// color: Colors.black12,
// fontSize: 10,
// ))
// ]),
// SizedBox(height: 5),
// ])),
// )
// ]
// )