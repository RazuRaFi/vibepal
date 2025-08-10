import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/controller/SplashController/logoController.dart';
import 'package:vivepal/view/component/CommonText.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LogoController());
    return Scaffold(
      body: Container(
        height: 960.h,
        width: 440.w,
        color: AppColors.black,
        child: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(text: "Vibe",fontSize: 72,fontWeight: FontWeight.w600,color: AppColors.white,),
              CommonText(text: "pal",fontSize: 72,fontWeight: FontWeight.w600,color: AppColors.violet,),
            ],
          )
        ),
        
      ),
    );
  }
}
