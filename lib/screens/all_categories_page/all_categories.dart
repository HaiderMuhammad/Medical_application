import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicine_app/widgets/categories_list.dart';
import 'package:medicine_app/widgets/custom_appbar.dart';
import 'package:medicine_app/widgets/custom_text.dart';




class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            backgroundColor: const Color(0xffFBFAF3),
            elevation: 0,
            title: Text(
              'POPULAR CATEGORIES',
              style: TextStyle(
                color: const Color(0xff151921),
                fontSize: 16.2.sp,
                fontWeight: FontWeight.bold
              ),
            ),
          leading: IconButton(
            padding: EdgeInsets.only(left: 20.w),
            onPressed: () => Get.back(),
            icon: RotatedBox(
              quarterTurns: -2,
              child: Icon(
                Icons.arrow_right_alt_rounded,
                color: const Color(0xff151921),
                size: 35.w,

              ),
            )
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                CategoriesList(),
              ],
            ),
          ),
        )
      ),
    );
  }
}
