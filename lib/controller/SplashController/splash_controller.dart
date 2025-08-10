import 'dart:async';
import 'package:get/get.dart';
import 'package:vivepal/helper/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      bool isLoggedIn = false;

      if (isLoggedIn) {
        Get.offNamed(AppRoutes.navber);
      } else {
        Get.offNamed(AppRoutes.logo);
      }
    });
  }
}
