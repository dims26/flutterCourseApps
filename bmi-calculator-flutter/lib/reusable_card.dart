import 'package:flutter/material.dart';
import 'layout_constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.color,
      this.margin = kDefaultMargin,
      this.borderRadius = kDefaultBorderRadius,
      this.child,
      this.onPress});
  final Function onPress;
  final Color color;
  final double margin;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        margin: EdgeInsets.all(margin),
        child: this.child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
      ),
    );
  }
}
