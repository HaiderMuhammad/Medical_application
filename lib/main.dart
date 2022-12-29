import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:medicine_app/routes/routes.dart';

import 'bindings/app_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      ScreenUtilInit(
        designSize: const Size(348, 753),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppPage.getNavbar(),
            initialBinding: AppBindings(),
            getPages: AppPage.routes,
          );
        },
      )
  );
}