import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableCard({@required this.colour,this.Cardchild,this.Onpress});
  final Color colour;
  // ignore: non_constant_identifier_names
  final Widget Cardchild;
  final Function Onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpress,
      child: Container(
        child: Cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
      ),
    );
  }
}
