import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onClick});
  final Function onClick;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: kAccentColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        height: kSubmitContainerHeight,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
