
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryModel {

  final String name;
  final String image;
  final MaterialColor? color;

  const CategoryModel({
    required this.name,
    required this.image,
    this.color
  });

  static List<CategoryModel> categoryList = [
    const CategoryModel(
      name: 'Nutritional Drinks',
      image: 'assets/images/Nutritional Drinks.png',
      color: Colors.red
    ),
    const CategoryModel(
      name: 'Ayurveda',
      image: 'assets/images/Ayurveda.png',
        color: Colors.cyan
    ),
    const CategoryModel(
      name: 'Vitamins &\nSupplement',
      image: 'assets/images/Vitamins & Supplement.png',
        color: Colors.purple
    ),
    const CategoryModel(
      name: 'Healthcare\nDevices',
      image: 'assets/images/Healthcare Devices.png',
        color: Colors.lightBlue
    ),
    const CategoryModel(
      name: 'Homeopathy',
      image: 'assets/images/Homeopathy.png',
        color: Colors.lightGreen
    ),
    const CategoryModel(
      name: 'Diabetes Care',
      image: 'assets/images/Diabetes Care.png',
        color: Colors.lime
    ),
  ];

}