import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medicine_app/controllers/home_controller.dart';
import 'package:medicine_app/screens/home_page/offer_cart1.dart';
import 'package:medicine_app/screens/home_page/offer_cart2.dart';
import 'package:medicine_app/widgets/categories_list.dart';
import 'package:medicine_app/screens/home_page/see_all_button.dart';
import 'package:medicine_app/screens/search_page/search_view.dart';
import 'package:medicine_app/widgets/custom_appbar.dart';
import 'package:medicine_app/widgets/search_field.dart';


class Home extends GetView<HomeController> {
  Home({Key? key}) : super(key: key);
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'MEDICINE',
        fontSize: 14.6,
        rightIcon: 'assets/icons/cartIcon.svg',
        leftIcon: 'assets/icons/userIcon.svg',
        iconHeight: 22.7,
      ),
        backgroundColor: const Color(0xffFBFAF3),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SearchTextField(
                      onTap: ()=> Get.to(()=> const SearchView()),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const Cart1(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.w,),
                    child: const Cart2(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        const ShowAllProducts(),
                        SizedBox(height: 10.h,),
                        const CategoriesList(),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
