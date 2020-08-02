import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_constants.dart';

class CardIcon extends StatelessWidget {
  CardIcon(
      {@required this.iconData,
      @required this.label,
      this.textStyle = kLabelTextStyle});

  final IconData iconData;
  final String label;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: kIconSize,
        ),
        kDividerHeight,
        Text(label, style: textStyle)
      ],
    );
  }
}
