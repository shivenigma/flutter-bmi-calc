import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  BottomButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
        child: Center(
          child: Text(
            this.text,
            textAlign: TextAlign.center,
            style: kLargeButtonStyle,
          ),
        ),
        color: kBottomBarColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}
