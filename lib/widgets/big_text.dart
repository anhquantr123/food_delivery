import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  bool fontWeight;
  TextOverflow overFlow;
  BigText(
      {super.key,
      required this.text,
      this.color = AppColor.titleColor,
      this.size = 24,
      this.overFlow = TextOverflow.ellipsis,
      this.fontWeight = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          overflow: overFlow,
          fontWeight: fontWeight ? FontWeight.bold : FontWeight.normal),
    );
  }
}
