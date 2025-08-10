import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/controller/SplashController/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Inject controller
    Get.put(SplashController());

    return Scaffold(
      body:  Container(
        height:960.h,
        width: 440.w,
        color:AppColors.black,
      ),
    );
  }
}
