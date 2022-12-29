import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/model/category_model.dart';
import 'package:medicine_app/widgets/product_cart.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.58.h),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: CategoryModel.categoryList.length,
      itemBuilder: (context, int index) {
        return ProductCart(
          path1: CategoryModel.categoryList[index].image,
          path2: CategoryModel.categoryList[index].name
        );
      },
    );
  }
}
