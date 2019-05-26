import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.tapAction});
  final Color color;
  final Widget cardChild;
  Function tapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.tapAction,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
