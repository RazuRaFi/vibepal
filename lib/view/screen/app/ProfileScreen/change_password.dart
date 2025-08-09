import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../component/CommonText.dart';
import '../../../component/common_button.dart';
import '../../../component/commont_textfield.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, size: 25, color: Colors.white),
        ),
        title: CommonText(
          text: "Change Password",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              CommonText(
                text: "Enter Current Password",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              SizedBox(height: 6),
              CommonTextField(
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter Current Password",
                hintTextColor: Colors.grey.shade700,
                fillColor: Colors.grey.shade900,
                borderColor: Colors.grey.shade900,
              ),
              SizedBox(height: 20,),

              CommonText(
                text: "New Password",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              SizedBox(height: 6),
              CommonTextField(
                prefixIcon: Icon(Icons.lock),
                hintText: "New Password",
                hintTextColor: Colors.grey.shade700,
                fillColor: Colors.grey.shade900,
                borderColor: Colors.grey.shade900,
              ),
              SizedBox(height: 20,),

              CommonText(
                text: "Confirm Password",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              SizedBox(height: 6),
              CommonTextField(
                prefixIcon: Icon(Icons.lock),
                hintText: "Confirm Password",
                hintTextColor: Colors.grey.shade700,
                fillColor: Colors.grey.shade900,
                borderColor: Colors.grey.shade900,
              ),
              SizedBox(height: 360,),
              CommonButton(
                onTap: (){},
                titleText: "Update Password",backgroundColor: Colors.deepPurple,titleSize: 20,titleWeight: FontWeight.w500,)
            ],
          ),
        ),
      ),

    );
  }
}
