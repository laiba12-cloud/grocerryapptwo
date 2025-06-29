import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/greenbutton.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/components/passwordclass.dart';
class LoginScreen extends StatefulWidget {
 const LoginScreen({super.key,});

  @override
  State<LoginScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/images/ladygrocery2.png", fit: BoxFit.cover,),
            Column(
                  children: [
                    SizedBox(height:30),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                          children: [
                            IconButton(onPressed:(){
                              Navigator.pop(context);},
                              icon: Icon(Icons.arrow_back, color: Colors.white)),
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
                    padding: const EdgeInsets.only(left:15),
                    child: Text('Sign in to Your account', style
                    : TextStyle(
                                  color: Colors.black,
                                )),
                              ),
                              TextFormField(
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
                              SizedBox(height:10),
                              PasswordClass(),
                              Padding(
                                padding: const EdgeInsets.only(left:10.0),
                                child: Row(
                                    children:[
                                      Icon(Icons.remember_me,color:Colors.grey),
                                      SizedBox(
                                          width:10
                                      ),
                                      Text('Remember me '),
                                      Spacer(),
                                      TextButton(onPressed: (){}, child:
                                      Center(child: Text('Forget Password'))),
                                    ]
                                ),
                              ),
                              GreenTextButton(text: 'Login', onTap: (){}),
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
                    SizedBox(height:50),
                  ]
              ),
          ],
        )

    );
  }
}
