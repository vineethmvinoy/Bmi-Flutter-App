import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'main.dart';
import 'dart:math';
import 'ReusableCard.dart';

class ResultPage extends StatelessWidget {
  @override
  double bmi = weight / pow(height / 100, 2);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 50,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    (bmi > 25)
                        ? 'OVERWEIGHT'
                        : (bmi < 25) ? 'UNDERWEIGHT' : 'PERFECT',
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(bmi.toStringAsFixed(1).toString(),
                      style: TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text((bmi > 25)
                      ? 'YOU ARE OVERWEIGHT,YOU SHOULD EXERCISE MORE'
                      : (bmi < 25) ? 'YOU ARE UNDERWEIGHT,YOU SHOULD EAT MORE' : 'YOU ARE FIT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,

                  ),),

                ],
              ),

            ),
          ),
          Container(
            height: 80.0,
            margin: EdgeInsets.only(top: 10),
            color: bottomCardColour,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Expanded(
                child: Center(
                  child: Text(
                    'RECALCULATE',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
