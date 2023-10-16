import 'package:flutter_dashboard/component/my_card.dart';
import 'package:flutter_dashboard/component/infoCard.dart';

import 'package:flutter_dashboard/constants.dart';
import 'package:flutter_dashboard/pages/charts.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Product {
  String name;
  bool enable;
  Product({this.enable = true, required this.name});
}

class PanelRightPage extends StatefulWidget {
  @override
  _PanelRightPageState createState() => _PanelRightPageState();
}

class _PanelRightPageState extends State<PanelRightPage> {
  // List<Product> _products = [
  //   Product(name: "LED Submersible Lights", enable: true),
  //   Product(name: "Portable Projector", enable: true),
  //   Product(name: "Bluetooth Speaker", enable: true),
  //   Product(name: "Smart Watch", enable: true),
  //   Product(name: "Temporary Tattoos", enable: true),
  //   Product(name: "Bookends", enable: true),
  //   Product(name: "Vegetable Chopper", enable: true),
  //   Product(name: "Neck Massager", enable: true),
  //   Product(name: "Facial Cleanser", enable: true),
  //   Product(name: "Back Cushion", enable: true),
  // ];

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SingleChildScrollView(
      backgroundColor: Constants.background,

      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Constants.white,
                        ),
                      ),
                      Text(
                        ' Card',
                        style: TextStyle(
                          fontSize: 28,
                          color: Constants.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Constants.primary,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 25),

            //card
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Mycard(
                    balance: 5250.20,
                    cardNum: 155550,
                    expiryM: 5,
                    expiryY: 22,
                    color: Constants.card,
                  ),
                  Mycard(
                    balance: 5250.20,
                    cardNum: 155550,
                    expiryM: 5,
                    expiryY: 22,
                    color: Constants.red,
                  ),
                  Mycard(
                    balance: 5250.20,
                    cardNum: 155550,
                    expiryM: 5,
                    expiryY: 22,
                    color: Constants.orange,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Constants.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BarChartSample3(),
                Circular1(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            LineChartSample12(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
