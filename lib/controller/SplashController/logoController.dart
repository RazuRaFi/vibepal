import 'dart:async';
import 'package:get/get.dart';
import 'package:vivepal/helper/app_routes.dart';

class LogoController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    // Step 2: Go from Logo → SignUp after 2 seconds
    Timer(Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.signup);
    });
  }
}
