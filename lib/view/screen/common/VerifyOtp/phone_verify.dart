import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/view/component/CommonText.dart';

import '../../../component/common_button.dart';

class PhoneVerify extends StatelessWidget {
  const PhoneVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 74,),
            Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: AppColors.white,
                child: Icon(Icons.phone,size: 40,),
              ),
            ),
            SizedBox(height: 22,),
            CommonText(text: "Check your phone",fontSize: 24,fontWeight: FontWeight.w600,color: AppColors.white,),
            SizedBox(height: 7,),
            CommonText(text: "We sent a password reset link to............8739",fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.white,),
            SizedBox(height: 25,),
            SizedBox(
              height: 55,
              width: 300,
              child: OtpTextField(
                numberOfFields: 4,
                borderColor: Color(0xFF512DA8),
                showFieldAsBox: true,
                fieldWidth: 55,         // Width of each OTP box
                borderRadius: BorderRadius.circular(8),
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(text: "Didn’t receive the code?",fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.white,),
                TextButton(onPressed: (){}, child:CommonText(text: "Resend",fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.violet,))
              ],
            ),
            SizedBox(height: 40,),
            CommonButton(
              titleText: "Verify OTP",
              backgroundColor: AppColors.button,
              buttonRadius: 50,
              titleSize: 20,
              titleWeight: FontWeight.w600,
            ),

          ],
        ),
      ),
    );
  }
}
