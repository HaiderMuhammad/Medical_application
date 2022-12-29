import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicine_app/controllers/home_controller.dart';

class SearchTextField extends GetView<HomeController> {
  const SearchTextField( {Key? key, this.onTap,}) : super(key: key);
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: controller.searchProduct,
      onTap: onTap,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF3F2E9),
        contentPadding: EdgeInsets.all(15.w),
        border: InputBorder.none,
        hintText: 'Search Medicine & Health Products',
        suffixIcon: Padding(
          padding: EdgeInsets.all(15.w),
          child: SvgPicture.asset('assets/icons/search.svg', width: 20.w,),
        ),
        hintStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xff818286)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.r),
            borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.r),
            borderSide: BorderSide.none
        ),

      ),
    );
  }
}
