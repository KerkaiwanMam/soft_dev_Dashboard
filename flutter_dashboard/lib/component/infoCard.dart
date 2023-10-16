import 'package:flutter/material.dart';
import '../../constants.dart';
import '../pages/charts.dart';

class infoCard extends StatelessWidget {


  const infoCard({
    Key? key,
    
    }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(     
              width: 150,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Constants.purpleLight,
                  borderRadius: BorderRadius.circular(16)),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: 10,
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,0,0,0),
                  child: Text(
                    'Balance',
                    style: TextStyle(
                      color: Constants.white,
                    ),
                  ),
                ),
                
                LineChartSample2(),

                
                
              ]),
            ),
      )
      );
  }
}

