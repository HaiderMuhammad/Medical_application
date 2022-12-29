

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_app/model/product_model.dart';
import 'package:medicine_app/widgets/product_cart.dart';

class DataSearch extends SearchDelegate {

  // @override
  // Widget build(BuildContext context) {
  //   return Semantics(
  //     child: Theme(
  //       data: appBarTheme(context),
  //       child: Scaffold(
  //         appBar: AppBar(
  //           backgroundColor: Colors.purple,
  //           title: const TextField(
  //
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }



  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return ThemeData(
      primaryColor: Colors.blueAccent,
      inputDecorationTheme: const InputDecorationTheme(
      ),
      hintColor: Colors.white,
      focusColor: Colors.white,
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: ()=> query = '',
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: ()=> close(context, null),
        icon: const Icon(Icons.arrow_back));
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames = ProductModel.productList.where((element)
    => element.name.toLowerCase().contains(query.toLowerCase())).toList();
    return SafeArea(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 0.7.h),
            itemCount: query == "" ? ProductModel.productList.length : filterNames.length,
            itemBuilder: (context, index) {
              return query == "" ? ProductCart(
                path1: ProductModel.productList[index].image,
                path2: ProductModel.productList[index].name,
              )
                  :
              ProductCart(
                path1: filterNames[index].image,
                path2: filterNames[index].name,
              );
            }
        ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }



}