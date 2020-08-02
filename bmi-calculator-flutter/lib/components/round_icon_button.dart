import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.iconData, @required this.onClick});
  final IconData iconData;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: kButtonHeight,
        width: kButtonWidth,
      ),
      shape: CircleBorder(),
      fillColor: kSecondaryButtonColor,
      onPressed: onClick,
      child: Icon(iconData),
    );
  }
}
