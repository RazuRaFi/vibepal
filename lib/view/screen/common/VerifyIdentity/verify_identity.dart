
import 'package:flutter/material.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/view/component/CommonText.dart';

import '../../../component/common_button.dart';
import '../../../component/commont_textfield.dart';

class VerifyIdentity extends StatelessWidget {
  const VerifyIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 100,),
            CommonText(text: "Verify your identity",fontSize: 24,fontWeight: FontWeight.w700,color: AppColors.white,),
            SizedBox(height: 10,),
            CommonText(text: "In order to verify your identity, we'll send you a code to your preferred method below.",fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.white,),
            SizedBox(height: 40,),
            CommonTextField(
              prefixIcon: Icon(Icons.email_outlined),
              hintText: "Enter your email",
              hintTextColor: Colors.grey.shade700,
              fillColor: Colors.grey.shade900,
              borderColor: Colors.grey.shade900,
            ),
            SizedBox(height: 15,),
            CommonTextField(
              prefixIcon: Icon(Icons.phone),
              hintText: "Enter your phone number",
              hintTextColor: Colors.grey.shade700,
              fillColor: Colors.grey.shade900,
              borderColor: Colors.grey.shade900,
            ),
            SizedBox(height: 55,),
            CommonButton(
              titleText: "Sign Up",
              backgroundColor: AppColors.button,
              buttonRadius: 50,
            ),

          ],
        ),
      ),
    );
  }
}
