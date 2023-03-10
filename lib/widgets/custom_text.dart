import 'package:flutter/material.dart';



class CustomText extends StatelessWidget {
  const CustomText({Key? key,
    required this.text, this.fontSize, this.color,
    this.fontWeight, this.height}) : super(key: key);

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
