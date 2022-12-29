import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine_app/model/category_model.dart';

Widget dot(RxBool isSelected) {
  return CircleAvatar(
    radius: 8,
    backgroundColor: isSelected.value ? Colors.black87 : Colors.grey,
  );
}


List<Widget> dotList() {
  List<Widget> list = [];

  for( int i=0; i<CategoryModel.categoryList.length; i++) {
  } return list;
}