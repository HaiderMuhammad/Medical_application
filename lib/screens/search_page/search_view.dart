import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medicine_app/controllers/home_controller.dart';
import 'package:medicine_app/navbar/navbar.dart';
import 'package:medicine_app/widgets/custom_appbar.dart';
import 'package:medicine_app/widgets/custom_grid_view.dart';
import 'package:medicine_app/widgets/search_delegate.dart';
import 'package:medicine_app/widgets/search_field.dart';

class SearchView extends GetView<HomeController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
              onPressed: () => Get.back(),
              rightIcon: 'assets/icons/cartIcon.svg',
              leftIcon: 'assets/icons/back_arrow.svg',
              title: 'SEARCH',
              iconHeight: 10,
              fontSize: 16.4,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchTextField(
                        onTap: () => showSearch(
                            context: context, delegate: DataSearch()),
                      ),
                    ],
                  ),
                  Obx(() => controller.isNull.value
                      ? const Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(),
                        )
                      : Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: const Text(
                            "No Items",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ))
                ],
              ),
            )));
  }
}
