import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/greentextbutton.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';
import 'package:grocerryapptwo/view/homeview/account/cardtwo/addcreditcardtwo.dart';

import '../../../../controller/components/blacktextwidget.dart';
import '../../../../controller/components/blacktextwidget.dart';
import '../../../../controller/utils/constant/appcolors/appcolors.dart';
class MyCardTwo extends StatefulWidget {
  MyCardTwo({super.key});

  @override
  State<MyCardTwo> createState() => _MyCardTwoState();
}

class _MyCardTwoState extends State<MyCardTwo> {
  bool isExpansion=false;

  bool isSwitched=false;

List <String> title=[
  'Master Card',
  'Visa Card',
  'Master Card'
];

List <String> icon=[
AppIcons.circleicon,
  AppIcons.visa,
  AppIcons.circleicon
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        title: BlackTextWidget(text: 'My card'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>AddCreditcardTwo()));}, icon: Icon(Icons.add_circle_outline))
        ],
      ),
      body:  Column(
          children: [
            Expanded(flex:90,
                child:SizedBox(
                  child: ListView.builder(
            itemCount: 3,
                    itemBuilder: (context,index) {
                      return ExpansionTile
                        (
                        subtitle: Column(
                          children: [
                            Text('XXXX XXXX XXXX 5678'),
                            Row(
                              children: [
                                Text('Expiry:'),
                                Text('01\22'),
                                SizedBox(width: 5,),
                                Text('CVV:'),
                                Text('908'),
                              ],
                            ),
                          ],
                        ),
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundColor: AppColors.greyColor,
                          child: ImageIcon(AssetImage(icon[index].toString())),
                        ),
                        trailing: isExpansion
                            ? IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_circle_down))
                            : IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_circle_up)),
                        onExpansionChanged: (expanded) {
                          isExpansion = expanded;
                          setState(() {});
                        },
                        title: Text(title[index].toString()),
                        children: [
                          Card(
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'RUSELL AUSTIN',
                                    prefixIcon: Icon(Icons.account_circle))
                            ),
                          ),
                          Card(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'XXXX XXXX XXXX 5678',
                                  prefixIcon: ImageIcon(
                                      AssetImage(AppIcons.crediticon)),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 50,
                                  child: Card(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '01/22',
                                          prefixIcon: Icon(Icons.calendar_month),
                                        ),
                                      )
                                  ),
                                ),
                                Expanded(
                                    flex: 50,
                                    child: Card(
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '908',
                                              prefixIcon: Icon(Icons.lock))
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Switch(
                                    activeColor: AppColors.greenColor,
                                    value: isSwitched, onChanged: (value) {
                                  isSwitched = value;
                                  setState(() {});
                                }),
                                BlackTextWidget(text: 'Make Default')
                              ],
                            ),
                          ),
                        ],
        
                      );
                    }
                  ),
                ) ),
            Expanded(
              flex: 10,
              child: Column(
              children: [
                GreenTextButton(text: 'Save settings', onTap: (){}),
                SizedBox(height: 20,)
              ],
            ),
            )
          ],
      ),
    );
  }
}
