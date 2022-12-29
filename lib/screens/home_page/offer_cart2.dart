import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'list_of_carts.dart';



class Cart2 extends StatelessWidget {
  const Cart2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 190.h,
          child: PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: WormEffect(
              dotHeight: 8.h,
              dotWidth: 8.w,
              type: WormType.thin,
              // strokeWidth: 5,
            ),
          ),
        )
      ],
    );
  }
}
