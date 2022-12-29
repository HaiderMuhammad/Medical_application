

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({Key? key,
    required this.height, required this.width,
    required this.text, required this.color,
    required this.fontSize}) : super(key: key);

  final double height;
  final double width;
  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.5.r),
        color: color,
      ),
      child: Center(
        child: Text( text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),
        ),
      )
    );
  }
}
