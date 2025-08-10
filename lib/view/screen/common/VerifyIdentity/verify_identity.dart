
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/controller/AuthController/verifyIdentityController.dart';
import 'package:vivepal/view/component/CommonText.dart';
import '../../../component/common_button.dart';
import '../../../component/commont_textfield.dart';

class VerifyIdentity extends StatefulWidget {
const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  final myKey=GlobalKey();
  final VerifyIdentityController controller=Get.put(VerifyIdentityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
                CommonText(text: "Verify your identity",fontSize: 24,fontWeight: FontWeight.w700,color: AppColors.white,),
                SizedBox(height: 10,),
                CommonText(text: "In order to verify your identity, we'll send you a code to your preferred method below.",fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.white,),
                SizedBox(height: 40,),
                CommonTextField(
                  controller: controller.emailController,
                  textColor: Colors.white,
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Enter your email",
                  hintTextColor: Colors.grey.shade700,
                  fillColor: Colors.grey.shade900,
                  borderColor: Colors.grey.shade900,
                ),
                SizedBox(height: 15,),
                CommonTextField(
                  controller: controller.phoneController,
                  textColor: Colors.white,
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Enter your phone number",
                  hintTextColor: Colors.grey.shade700,
                  fillColor: Colors.grey.shade900,
                  borderColor: Colors.grey.shade900,
                ),
                SizedBox(height: 55,),
                CommonButton(
                  onTap: (){
                    controller.sendOtp();
                  },
                  titleText: "Send OTP",
                  backgroundColor: AppColors.button,
                  borderColor: Colors.deepPurpleAccent,
                  buttonRadius: 50,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
