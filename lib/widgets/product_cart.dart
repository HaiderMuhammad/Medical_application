import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/model/category_model.dart';

import 'Custom_text.dart';



class ProductCart extends StatelessWidget {
  const ProductCart({Key? key, this.path1, this.path2}) : super(key: key);
  final String? path1;
  final String? path2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 94.w,
          height: 97.h,
          margin: EdgeInsets.only(bottom: 6.5.h, top: 12.h),
          decoration: BoxDecoration(
            color: const Color(0xffF6F9FE),
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(width: 0.8.w, color: const Color(0xffEFEDE9)),
          ),
          child: Center(
            child: Image.asset(path1!, width: 69.w,),
          ),
        ),
        CustomText(
          text: path2!,
          fontSize: 11.4.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff151921),
        ),
      ],
    );
  }
}