import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function tapAction;
  RoundIconButton({@required this.icon, this.tapAction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(this.icon),
      onPressed: this.tapAction,
    );
  }
}
