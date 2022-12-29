import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicine_app/screens/all_categories_page/all_categories.dart';
import 'package:medicine_app/widgets/custom_text.dart';



class ShowAllProducts extends StatelessWidget {
  const ShowAllProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.to(()=> const AllCategories() ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'Popular Categories',
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(
                text: 'SEE ALL',
                fontWeight: FontWeight.bold,
                fontSize: 11.3.sp,
              ),
              IconButton(
                onPressed: () {},
                constraints: BoxConstraints(
                    minWidth: 0.h
                ),
                icon: Icon(Icons.arrow_forward_ios, size: 11.3.h,),
                padding: EdgeInsets.zero,
              )
            ],
          )
        ],
      ),
    );
  }
}