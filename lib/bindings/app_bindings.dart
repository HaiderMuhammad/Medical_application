import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:medicine_app/controllers/navbar_controller.dart';
import 'package:medicine_app/controllers/home_controller.dart';


class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NavBarController>(NavBarController());
    Get.put<HomeController>(HomeController());
  }
}