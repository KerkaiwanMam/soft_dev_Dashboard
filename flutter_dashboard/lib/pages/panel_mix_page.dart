import 'package:flutter_dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import './charts.dart';

class MixPage extends StatefulWidget {
  const MixPage({Key? key}) : super(key: key);

  @override
  State<MixPage> createState() => _MixPageState();
}

class _MixPageState extends State<MixPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Constants.orange,
      
      body: SafeArea(
        child: Column(children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                'My',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              Text(
                'Card',
                style: TextStyle(fontSize: 26),
              )
            ],
          ),
          )
        ],
        )
        ),

    );
  }
}