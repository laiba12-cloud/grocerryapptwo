import 'package:flutter/material.dart';
import 'package:grocerryapptwo/controller/components/blacktextwidget.dart';

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
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
                child: ExpansionTile(
                    title: Text('Order #30987'),
                    leading: CircleAvatar(),
                    trailing: isExpanded
                        ?  Icon(Icons.arrow_circle_up)
                        : Icon(Icons.arrow_circle_down_outlined),
                    subtitle: Column(children: [
                      Text('Placed on october 19 2021'),
                      Row(children: [
                        Row(children: [
                          Text('items:'),
                          Text('\$items'),
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
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    BlackTextWidget(text: 'Order Placed'),
                    Spacer(),
                    Text('october 19 2019'),
                  ]),
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    BlackTextWidget(text: 'Order Placed'),
                    Spacer(),
                    Text('october 19 2019'),
                  ]),
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    BlackTextWidget(text: 'Order Placed'),
                    Spacer(),
                    Text('october 19 2019'),
                  ]),
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    BlackTextWidget(text: 'Order Placed'),
                    Spacer(),
                    Text('october 19 2019'),
                  ]),
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    BlackTextWidget(text: 'Order Placed'),
                    Spacer(),
                    Text('october 19 2019'),
                  ]),
                  Row(children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    BlackTextWidget(text: 'Order Placed'),
                    Spacer(),
                    Text('october 19 2019'),
                  ])
                ]));
          }),
    );
  }
}
