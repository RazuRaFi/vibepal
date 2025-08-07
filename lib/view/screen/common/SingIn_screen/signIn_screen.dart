import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/controller/AuthController/signInController.dart';

import '../../../../Utils/App_colors.dart';
import '../../../component/CommonText.dart';
import '../../../component/common_button.dart';
import '../../../component/commont_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController controller=Get.put(SignInController());

    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 57),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        text: "Vibe",
                        fontSize: 60,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                      CommonText(
                        text: "pal",
                        fontSize: 60,
                        fontWeight: FontWeight.w600,
                        color: AppColors.violet,
                      ),
                    ],
                  ),
                  SizedBox(height: 11),
                  CommonText(
                    text: "Welcome back!",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                  SizedBox(height: 5),
                  CommonText(
                    text:
                    "Enter your details and login to your account.",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                  SizedBox(height: 20),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Email",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  SizedBox(height: 6),
                  CommonTextField(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Enter your email",
                    hintTextColor: Colors.grey.shade700,
                    fillColor: Colors.grey.shade900,
                    borderColor: Colors.grey.shade900,
                  ),
                  SizedBox(height: 6),
                  CommonText(
                    text: "Password",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  SizedBox(height: 6),
                  CommonTextField(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Enter your password",
                    hintTextColor: Colors.grey.shade700,
                    fillColor: Colors.grey.shade900,
                    borderColor: Colors.grey.shade900,
                  ),
                  SizedBox(height: 15),
                  Obx(() => Row(
                    children: [
                      Checkbox(
                        value: controller.isChecked.value,
                        onChanged: (bool? value) {
                          controller.isChecked.value = value!;
                        },
                        activeColor: Colors.black,
                      ),
                      CommonText(
                        text: "Remember me",
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )),
                  SizedBox(height: 15),
                  
                  CommonButton(
                    titleText: "Sign In ",
                    backgroundColor: AppColors.button,
                    buttonRadius: 50,
                    titleSize: 20,
                    titleWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 18),
                  Center(child: TextButton(onPressed: (){}, child: CommonText(text: "Forgot the password?",color: AppColors.white,fontSize: 16,fontWeight: FontWeight.w600,))),

                  SizedBox(height: 37),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        text: "New to VibePal?",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: CommonText(
                          text: "Sign Up",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.violet,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
