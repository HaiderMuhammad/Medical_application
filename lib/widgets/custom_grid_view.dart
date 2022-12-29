// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_state_manager/src/simple/get_view.dart';
// import 'package:medicine_app/controllers/home_controller.dart';
// import 'package:flutter_svg/svg.dart';
//
// import 'Custom_text.dart';
//
//
// class CustomGridView extends GetView<HomeController> {
//   const CustomGridView({Key? key,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3, childAspectRatio: 0.8.h),
//       itemCount: controller.searchList.length,
//       shrinkWrap: false,
//       itemBuilder: (_, index) => Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: 94.w,
//             height: 97.h,
//             margin: EdgeInsets.only(bottom: 6.5.h, top: 12.h, right: 11.4.w),
//             decoration: BoxDecoration(
//               color: const Color(0xffF6F9FE),
//               borderRadius: BorderRadius.circular(16.r),
//               border: Border.all(width: 0.8.w, color: const Color(0xffEFEDE9)),
//             ),
//             child: Center(
//               child: SvgPicture.asset(controller.searchList[index].image, width: 69.w,),
//             ),
//           ),
//           CustomText(
//             text: controller.searchList[index].name,
//             fontSize: 11.4.sp,
//             fontWeight: FontWeight.w600,
//             color: const Color(0xff151921),
//           ),
//         ],
//       )
//     );
//   }
// }
