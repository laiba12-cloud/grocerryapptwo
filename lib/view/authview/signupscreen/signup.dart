import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/components/greytextwidget.dart';

import '../../../controller/components/greentextbutton.dart';
import '../../../controller/components/passwordclass.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
    children: [
    Image.asset("assets/images/ladygrocery3.png", fit: BoxFit.cover,),
    Column(
    children: [
    SizedBox(height:30),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
    children: [
    Icon(Icons.arrow_back, color: Colors.white),
    SizedBox(width: 50),
    Text('Welcome', style: TextStyle(
    color: Colors.white,
    fontSize:15,
    ),),
    ]
    ),
    ),
    Spacer(),
    Container(
    width: double.infinity,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.all(5),
    child: BlackTextWidget(text: 'Create Account')
    ),
    Padding(
      padding: const EdgeInsets.only(left:12.0,bottom: 5),
      child: GreyTextWidget(text: 'quickly create account'),
    ),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0),
      child: Card(
        child: TextFormField(
        decoration: InputDecoration(
        border: InputBorder.none,
        hintStyle:TextStyle(
        color:Colors.grey
        ),
        hintText: 'Email Address',
        prefixIcon: Icon(Icons.mail, color: Colors
            .grey),

        ),
        ),
      ),
    ),
    SizedBox(height:5),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0),
      child: Card(
        child:TextFormField(
          decoration: InputDecoration(
            border:InputBorder.none,
            hintText:'Phone Number',
            prefixIcon: Icon(Icons.call,)
          ),
        )
      ),
    ),
    SizedBox(height:5),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0),
      child: Card(child: PasswordClass()),
    ),

    Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: GreenTextButton(text: 'SignUp', onTap: (){}),
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
    ]
    )


    ),
    SizedBox(height:25),
    ]
    ),
    ],
        ),

    );
  }
}
