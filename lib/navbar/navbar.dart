import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicine_app/controllers/navbar_controller.dart';
import 'package:medicine_app/screens/home_page/home.dart';
import 'package:medicine_app/screens/lab_page/lab_test.dart';
import 'package:medicine_app/screens/offers_page/offers.dart';
import 'package:medicine_app/screens/order_page/order.dart';
import 'package:medicine_app/screens/profile_page/profile.dart';

class NavBarView extends GetView<NavBarController> {
  NavBarView({Key? key}) : super(key: key);
  final pages = [
    Home(),
    Order(),
    const LabTest(),
    const Offers(),
    const Profile()
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(()=>
            Scaffold(
              body: IndexedStack(
                index: controller.tabIndex.value,
                children: pages,
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) => controller.changeTabIndex(index),
                currentIndex: controller.tabIndex.value,
                selectedItemColor: const Color(0xff151921),
                showUnselectedLabels: true,
                selectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                ),
                unselectedItemColor: const Color(0xff151921),
                items: [
                  _bottomNavigationBarItem(
                      image: 'assets/icons/home.svg',
                      label: 'HOME',
                      index: 0,
                      tapIndex: controller.tabIndex.value
                  ),
                  _bottomNavigationBarItem(
                      image: 'assets/icons/order.svg',
                      label: 'ORDER',
                      index: 1,
                      tapIndex: controller.tabIndex.value
                  ),
                  _bottomNavigationBarItem(
                      image: 'assets/icons/labs.svg',
                      label: 'LAB TEST',
                      index: 2,
                      tapIndex: controller.tabIndex.value
                  ),
                  _bottomNavigationBarItem(
                      image: 'assets/icons/offers.svg',
                      label: 'OFFERS',
                      index: 3,
                      tapIndex: controller.tabIndex.value
                  ),
                  _bottomNavigationBarItem(
                      image: 'assets/icons/profile.svg',
                      label: 'PROFILE',
                      index: 4,
                      tapIndex: controller.tabIndex.value
                  ),

                ],
              ),
            ),
        )
    );
  }

  _bottomNavigationBarItem({
    required String image,
    required String label,
    required int index,
    required int tapIndex}) {

    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
            image, color: index == tapIndex ? const Color(0xffBFB5FF) : const Color(0xff83848B),
        ),
        label: label

    );
  }
}