import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vivepal/helper/app_routes.dart';

class VerifyIdentityController extends GetxController{



  final TextEditingController emailController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();

  void sendOtp() {
    String email = emailController.text.trim();
    String phone = phoneController.text.trim();

    if (email.isNotEmpty && phone.isEmpty) {
      Get.toNamed(AppRoutes.mailverify, arguments: email);
    }
    else if (phone.isNotEmpty && email.isEmpty) {
      Get.toNamed(AppRoutes.phoneVerify, arguments: phone);
    }
    else if (email.isEmpty && phone.isEmpty) {
      Get.snackbar('Error', 'Please enter email or phone number');
    }
    else {
      Get.snackbar('Error', 'Enter either email OR phone, not both');
    }
  }

}