import 'package:flutter/material.dart';
class PasswordClass extends StatefulWidget {
  const PasswordClass({super.key});

  @override
  State<PasswordClass> createState() => _PasswordClassState();
}

class _PasswordClassState extends State<PasswordClass> {


  bool isSecure=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: TextFormField(
          obscureText: isSecure,
            style: TextStyle(
              color:Colors.grey,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Password',
                prefixIcon: Icon(Icons.lock,color:Colors.grey,size:20),
                suffixIcon: IconButton(onPressed: (){
                  if(isSecure==true){
                    isSecure=false;
                  }
                  else{
                    isSecure=true;
                  }
                  setState(() {

                  });
                }, icon:Icon(
                  isSecure==true?
                  Icons.visibility_off
                      :
                    Icons.remove_red_eye),),
                )


      ),
    );
  }
}
