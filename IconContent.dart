import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.IC, this.tx});

  final IconData IC;
  final String tx;
  static const ts = TextStyle(
    fontSize: 18,
    color: Color(0XFF8D8E98),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          IC,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(tx, style: ts),
      ],
    );
  }
}
