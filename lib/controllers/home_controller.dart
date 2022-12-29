

import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medicine_app/model/category_model.dart';
import 'package:medicine_app/model/product_model.dart';

class HomeController extends GetxController {
  final RxList<ProductModel> searchList = <ProductModel>[].obs;
  final RxBool isNull = true.obs;



  @override
  void onInit() {
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }


  void searchProduct(String product) {
    if(product.isEmpty) {
      isNull.value = true;
      return;
    }
    else {
      List<ProductModel> result = ProductModel.productList
          .where((element) => element.name.toLowerCase()
          .contains(product.toLowerCase())).toList();

      searchList.value = result;
      isNull.value = false;
    }
    }
}