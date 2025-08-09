import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivepal/controller/SettingController/privacySettingController.dart';
import '../../../component/CommonText.dart';
import '../../../component/common_button.dart';
import '../../../component/commont_textfield.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});


  @override
  Widget build(BuildContext context) {
    final ProfileVisibilityController controller=Get.put(ProfileVisibilityController());
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
          text: "Privacy Settings",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(text: "Make Profile Visible",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                      CommonText(text: "Allow others to find and view your profile",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white,),
                    ],
                  ),
                  Obx(() => Switch(
                    value: controller.isVisible.value,
                    onChanged: controller.toggleVisibility,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.deepPurple,
                  )),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(text: "Allow Friend Reqests",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                      CommonText(text: "Let others send you friend requests",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white,),
                    ],
                  ),
                  Obx(() => Switch(
                    value: controller.isSwitch.value,
                    onChanged: controller.toggleVisibility2,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.deepPurple,
                  )),
                ],
              )
              
            ],
          ),
        ),
      ),

    );
  }
}
