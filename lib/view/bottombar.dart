import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/productdetails.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
import 'package:grocerryapptwo/view/authview/loginscreen/login.dart';
import 'package:grocerryapptwo/view/authview/signupscreen/signup.dart';
import 'package:grocerryapptwo/view/homeview/account/account.dart';
import 'package:grocerryapptwo/view/homeview/account/myorder/ordersuccess.dart';
import 'package:grocerryapptwo/view/homeview/favouitescreen.dart';
import 'package:grocerryapptwo/view/homeview/homescreenlast.dart';


class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentindex=0;
  pageChanged(index){
    currentindex=index;
    setState(() {
    });
  }

  List pages=[
    HomeScreenLast(),
    AccountScreen(),
FavouriteScreen(),
    OrderSuccess()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: pageChanged,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black12,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favourite'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.green,),label: 'cart'),
      ]), body: pages.elementAt(currentindex),
    );
  }
}
