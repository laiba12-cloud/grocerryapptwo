import 'package:flutter/material.dart';

import '../utils/constant/appicons/appicons.dart';
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
      color: Colors.white,
      child: TextFormField(
          obscureText: isSecure,
            style: TextStyle(
              color:Colors.grey,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Password',
                prefixIcon: ImageIcon(AssetImage(AppIcons.lock),color:Colors.grey,size:15),
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
