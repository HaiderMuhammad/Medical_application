import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/widgets/Custom_text.dart';
import 'package:medicine_app/widgets/order_button.dart';

class Cart1 extends StatelessWidget {
  const Cart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 122.h,
      margin: EdgeInsets.symmetric(vertical: 16.2.h,),
      padding: EdgeInsets.symmetric(horizontal: 19.5.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.5.r),
        color: const Color(0xffD7D0FF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: 'UPLOAD PRESCRIPTION',
            fontWeight: FontWeight.bold,
            fontSize: 14.6.sp,
            color: const Color(0xff151921),
          ),
          Container(
              width: 210.w,
              margin: EdgeInsets.only(top: 3.5.h, bottom: 14.6.h),
              child: CustomText(
                text: 'Upload a Prescription and Tell Us what you Need. We do the Rest.!',
                fontSize: 11.3.sp,
                fontWeight: FontWeight.normal,
                height: 1.2.h, color: const Color(0xff151921),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Flat 25% off \non Medicines*',
                fontWeight: FontWeight.bold,
                fontSize: 9.7.sp,
                color: const Color(0xff151921),
              ),
              OrderButton(
                height: 30.h,
                width: 97.5.w,
                text: 'ORDER NOW',
                color: const Color(0xff5F48E6),
                fontSize: 11.3.sp,
              ),
            ],
          )
        ],
      ),
    );
  }
}
