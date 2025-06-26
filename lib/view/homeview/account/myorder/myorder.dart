import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';
import 'package:grocerryapptwo/controller/utils/constant/appcolors/appcolors.dart';
import 'package:grocerryapptwo/controller/utils/constant/appicons/appicons.dart';

class MyOrder extends StatefulWidget {
  MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
                child: ExpansionTile(
                    title: Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: BlackTextWidget(text:'Order #90897'),
                    ),
                    leading: CircleAvatar(
                      radius:22,
                      backgroundColor: AppColors.greenColor.withOpacity(0.2),
                      backgroundImage: AssetImage(AppIcons.box,),
                    ),
                    trailing: isExpanded
                        ?  Icon(Icons.arrow_circle_up)
                        : Icon(Icons.arrow_circle_down_outlined),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Placed on october 19 2021'),
                      Row(children: [
                        Row(children: [
                          Text('items:'),
                          Text('\$items' ),
                        ]),
                        SizedBox(width: 5),
                        Row(children: [
                          Text('items:'),
                          Text('30',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ])
                      ])
                    ]),
                    onExpansionChanged: (expanded) {
                      isExpanded = expanded;
                      setState(() {});
                    },
                    children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(children: [
                      CircleAvatar(
                        radius: 08,
                        backgroundColor: Colors.green.shade300,
                      ),
                      SizedBox(width:2),
                      BlackTextWidget(text: 'Order Placed'),
                      Spacer(),
                      Text('october 19 2019'),
                    ]),
                  ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: [
                          CircleAvatar(
                            radius: 08,
                            backgroundColor: Colors.green.shade300,
                          ),
                          SizedBox(width:2),
                          BlackTextWidget(text: 'Order Placed'),
                          Spacer(),
                          Text('october 19 2019'),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: [
                          CircleAvatar(
                            radius: 08,
                            backgroundColor: Colors.green.shade300,
                          ),
                          SizedBox(width:2),
                          BlackTextWidget(text: 'Order Placed'),
                          Spacer(),
                          Text('october 19 2019'),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: [
                          CircleAvatar(
                            radius: 08,
                            backgroundColor: Colors.green.shade300,
                          ),
                          SizedBox(width:2),
                          BlackTextWidget(text: 'Order Placed'),
                          Spacer(),
                          Text('pending...'),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: [
                          CircleAvatar(
                            radius: 08,
                            backgroundColor: Colors.green.shade300,
                          ),
                          SizedBox(width:2),
                          BlackTextWidget(text: 'Order Placed'),
                          Spacer(),
                          Text('Out For delivery'),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: [
                          CircleAvatar(
                            radius: 08,
                            backgroundColor: Colors.green.shade300,
                          ),
                          SizedBox(width:2),
                          BlackTextWidget(text: 'Order Placed'),
                          Spacer(),
                          Text('order delivered'),
                        ]),
                      ),

                ]));
          }),
    );
  }
}
