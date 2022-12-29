import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medicine_app/model/category_model.dart';
import 'package:medicine_app/screens/home_page/offer_cart2.dart';
import 'package:medicine_app/widgets/search_delegate.dart';


class Order extends StatelessWidget {
  Order({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
                icon: const Icon(Icons.search_rounded)
            )
          ],
          title: const Text('Note Page'),
        ),
        body: const Text('Hello')
      ),
    );
  }
}
