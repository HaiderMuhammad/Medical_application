import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicine_app/model/category_model.dart';
import 'package:medicine_app/model/product_model.dart';
import 'package:medicine_app/widgets/Custom_text.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 94.w,
          height: 97.h,
          margin: EdgeInsets.only(bottom: 6.5.h, top: 12.h, right: 11.4.w),
          decoration: BoxDecoration(
            color: const Color(0xffF6F9FE),
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(width: 0.8.w, color: const Color(0xffEFEDE9)),
          ),
          child: Center(
            child: Image.asset(CategoryModel.categoryList[index].image, width: 70.w,),
          ),
        ),
        CustomText(
          text: CategoryModel.categoryList[index].name,
          fontSize: 11.4.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff151921),
        ),
      ],
    );
  }
}
