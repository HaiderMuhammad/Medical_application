

import 'package:get/get.dart';

class NavBarController extends GetxController {
  final _tabIndex = 0.obs;


  void changeTabIndex(int index) {
    _tabIndex.value = index;
  }


  get tabIndex => _tabIndex;
}