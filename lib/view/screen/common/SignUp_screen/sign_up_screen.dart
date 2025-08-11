import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/helper/app_routes.dart';
import 'package:vivepal/view/component/common_button.dart';
import 'package:vivepal/view/component/commont_textfield.dart';

import '../../../component/CommonText.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27),
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
                    text: "Create an account",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                  SizedBox(height: 5),
                  CommonText(
                    text:
                        "Enter the following details carefully to create your account",
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
                    text: "Full Name",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  SizedBox(height: 6),
                  CommonTextField(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your full name",
                    hintTextColor: Colors.grey.shade700,
                    fillColor: Colors.grey.shade900,
                    borderColor: Colors.grey.shade900,
                  ),
                  SizedBox(height: 6),
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
                    text: "Phone Number",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  SizedBox(height: 6),
                  CommonTextField(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Enter your phone number",
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
                  SizedBox(height: 6),
                  CommonText(
                    text: "Confirm Password",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  SizedBox(height: 6),
                  CommonTextField(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Enter your confirm password",
                    hintTextColor: Colors.grey.shade700,
                    fillColor: Colors.grey.shade900,
                    borderColor: Colors.grey.shade900,
                  ),
                  SizedBox(height: 20),
                  CommonButton(
                    onTap: (){
                      Get.toNamed(AppRoutes.verifyIdentity);
                    },
                    titleText: "Sign Up",
                    backgroundColor: AppColors.button,
                    buttonRadius: 50,
                    borderColor: Colors.deepPurpleAccent,
                  ),

                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        text: "Already a user?",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signIn);
                        },
                        child: CommonText(
                          text: "Sign In",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.violet,
                        ),
                      ),
                    ],
                  ),

                  Center(
                    child: RichText(
                      textAlign: TextAlign.center, // Center align the whole text
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        children: [
                          TextSpan(
                            text: "By continuing you agree to our ",
                          ),
                          TextSpan(
                            text: 'T&Cs. ',
                            style: TextStyle(
                              color: AppColors.violet, // Replace with your desired color
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("T&Cs tapped");
                              },
                          ),
                          TextSpan(
                            text:
                            'We use your data to offer you a personalized experience.',
                          ),
                        ],
                      ),
                    ),
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
