import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicine_app/widgets/cartIcon.dart';

import 'Custom_text.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({Key? key, this.rightIcon, this.onPressed, required this.leftIcon, required this.title, this.width, this.iconHeight, this.fontSize, this.cartIcon}) : super(key: key);

  final String? rightIcon;
  final String leftIcon;
  final String title;
  final double? width;
  final double? iconHeight;
  final double? fontSize;
  final Function()? onPressed;
  final Widget? cartIcon;

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xffFBFAF3),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(
                    rightIcon ?? '',
                    color: const Color(0xff151921),
                    height: 22.h,
                  ),
                ),
                Positioned(
                    top: 11.h,
                    right: 9.w,
                    child: Container(

                      width: 13.w,
                      height: 13.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2.w, color: const Color(0xff0BAB7C)),
                        color: const Color(0xff151921),
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    )),
              ],
            )
          )
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: IconButton(
            padding:  EdgeInsets.zero,
            onPressed: onPressed,
            icon: SvgPicture.asset(leftIcon,
              color: const Color(0xff151921),
              width: width,
              height: iconHeight?.h,
            ),
          ),
        ),
        title: CustomText(
          text: title,
          fontSize: fontSize?.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xff151921),
        )
    );
  }
}

// Widget CustomApp({final String? rightIcon,
// required final String leftIcon,
// required final String title,
// final double? width,
// final double? iconHeight,
// final double? fontSize,
// final Function()? onPressed}) {
//   return AppBar(
//       centerTitle: false,
//       backgroundColor: const Color(0xffFBFAF3),
//       elevation: 0,
//       actions: [
//         Padding(
//           padding: EdgeInsets.only(right: 12.w),
//           child: Stack(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 padding:  EdgeInsets.zero,
//                 icon: SvgPicture.asset(rightIcon?? '',
//                   color: const Color(0xff151921),
//                   height: 19.h,
//                 ),
//               ),
//               Positioned(
//                   top: 8.h,
//                   right: 7.w,
//                   child: Container(
//                     width: 13.w, height: 13.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(1000.r),
//                       border: Border.all(width: 2.w, color: const Color(0xff0BAB7C)),
//                       color: const Color(0xff151921),
//                     ),
//                     child: Center(
//                       child: Text('2', style: TextStyle(fontSize: 8.sp),),
//                     ),
//                   )),
//             ],
//           ),
//         )
//       ],
//       leading: Padding(
//         padding: EdgeInsets.only(left: 20.w),
//         child: IconButton(
//           padding:  EdgeInsets.zero,
//           onPressed: onPressed,
//           icon: SvgPicture.asset(leftIcon,
//             color: const Color(0xff151921),
//             width: width,
//             height: iconHeight?.h,
//           ),
//         ),
//       ),
//       title: CustomText(
//         text: title,
//         fontSize: fontSize?.sp,
//         fontWeight: FontWeight.bold,
//         color: const Color(0xff151921),
//       )
//   );
// }


