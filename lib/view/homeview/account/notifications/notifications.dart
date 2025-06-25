import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back),
        title: BlackTextWidget(text: 'Notifications'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          
        ],
      )
    );
  }
}
