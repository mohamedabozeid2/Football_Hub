import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final Color color;
  final double paddingVertical;
  final double paddingHorizontal;

  const MyDivider({
    super.key,
    required this.color,
    this.paddingHorizontal = 8.0,
    this.paddingVertical = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical, horizontal: paddingHorizontal),
      child: Container(
        height: 2,
        color: color,
      ),
    );
  }
}
