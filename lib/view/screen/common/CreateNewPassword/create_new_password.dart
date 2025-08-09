
import 'package:flutter/material.dart';

import '../../../../Utils/App_colors.dart';
import '../../../component/CommonText.dart';
import '../../../component/common_button.dart';
import '../../../component/commont_textfield.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
                child: Icon(Icons.key,size: 40,),
              ),
            ),
            SizedBox(height: 22,),
            CommonText(text: "Create new password",fontSize: 24,fontWeight: FontWeight.w600,color: AppColors.white,),
            SizedBox(height: 7,),
            CommonText(text: "Your new password must be different to previously used passwords.",fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.white,),
            SizedBox(height: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: "Password",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                SizedBox(height: 6),
                CommonTextField(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Enter your password",
                  hintTextColor: Colors.grey.shade700,
                  fillColor: Colors.grey.shade900,
                  borderColor: Colors.grey.shade900,
                ),
                SizedBox(height: 10,),
                CommonText(
                  text: "Password",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                SizedBox(height: 6),
                CommonTextField(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Enter your password",
                  hintTextColor: Colors.grey.shade700,
                  fillColor: Colors.grey.shade900,
                  borderColor: Colors.grey.shade900,
                ),
              ],
            ),
            SizedBox(height: 50,),
            CommonButton(
              titleText: "Reset Password",
              backgroundColor: AppColors.button,
              buttonRadius: 50,
              titleSize: 20,
              titleWeight: FontWeight.w600,
            ),
            SizedBox(height: 36,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                CommonText(text: "Back to log in",fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.white,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
