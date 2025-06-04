import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/OnBoardingWidget.dart';
import 'package:grocerryapptwo/controller/components/greenbutton.dart';
import 'package:grocerryapptwo/controller/utils/constant/appimages/appimages.dart';
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController pageController=PageController();
  int currentPage=0;
  nextPage(){
    if(currentPage<3){
      pageController.animateToPage(currentPage++, duration:Duration(milliseconds: 500) , curve: Curves.bounceIn);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: currentPage==2?
      Padding(
        padding: const EdgeInsets.only(left:30),
        child: GreenButton(text: 'Get Started', onTap: (){}),
      ) :

    Padding(
      padding: const EdgeInsets.only(left:60),
      child: Row(
          children:[
            Text('skip',),
            Spacer(),
            TextButton(onPressed:(){
              nextPage();
            },
            child:Text('Next'))
          ]
        ),
    ),
      body: PageView(
        controller:pageController,
          onPageChanged:(a){
          currentPage=a;
          setState((){});
          },
        children:[
          OnBoardingWidget(image: AppImages.intro1,heading: 'Buy Grocerry',  description: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
          OnBoardingWidget(image: AppImages.intro2,heading: 'Fast Delivery',  description: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
          OnBoardingWidget(image: AppImages.intro3,heading: 'Enjoy quality Food',  description: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
        ]
      ),
    );
  }
}