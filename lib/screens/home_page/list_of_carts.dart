import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicine_app/widgets/custom_text.dart';
import 'package:medicine_app/widgets/order_button.dart';

final controller = PageController(
  viewportFraction: 1,
  keepPage: true,
);

const colors = [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];

final pages = List.generate(
    6,
    (index) => Container(
        height: 160.h,
        margin: EdgeInsets.only(bottom: 10.h, top: 16.h, right: 15.w),
        padding: EdgeInsets.only(left: 18.7.w, right: 9.w, top: 10.h,),
        decoration: BoxDecoration(
          color: const Color(0xffC7F4C2),
          borderRadius: BorderRadius.circular(19.5.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RotatedBox(
                        quarterTurns: -1,
                        child: CustomText(
                          text: 'UPTO',
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff161531),
                        )),
                    CustomText(
                      text: '80%',
                      fontWeight: FontWeight.bold,
                      fontSize: 32.5.sp,
                      color: const Color(0xff161531),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 52.w),
                    child: CustomText(
                      text: 'OFFER*',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    )),
                CustomText(
                  text: 'On Health Products',
                  fontWeight: FontWeight.bold,
                  fontSize: 11.4.sp,
                  height: 1.2.h,
                ),
                SizedBox(
                  height: 9.5.h,
                ),
                OrderButton(
                  height: 27.6.h,
                  width: 81.w,
                  text: 'Order Now',
                  color: const Color(0xff0BAB7C),
                  fontSize: 10.sp,
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomText(
                  text: 'Homeopathy, Ayurvedic,\nPersonal Care & More',
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
            Stack(
              children: [
                Positioned(
                  right: 15.w,
                  top: 10.h,
                  child: SvgPicture.asset(
                    'assets/images/oval.svg',
                    width: 100.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/images/cart2_image.png',
                        width: 150.w,
                      )),
                ),
              ],
            )
          ],
        )));
