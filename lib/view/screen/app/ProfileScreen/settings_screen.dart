
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/helper/app_routes.dart';

import '../../../component/CommonText.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          text: "Settings",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.privacy_tip,size: 35,color: Colors.deepPurple,),
                    CommonText(text: "Privacy Settings",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                  ],
                ),
                IconButton(onPressed: (){
                  Get.toNamed(AppRoutes.privacySettings);
                }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 22,color: Colors.deepPurple,))
              ],
            ),
            Divider(thickness: 1,color: Colors.grey.shade900,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.lock,size: 35,color: Colors.deepPurple,),
                    CommonText(text: "Change Password",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                  ],
                ),
                IconButton(onPressed: (){
                  Get.toNamed(AppRoutes.changePassword);
                }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 22,color: Colors.deepPurple,))
              ],
            ),
            Divider(thickness: 1,color: Colors.grey.shade900,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.delete,size: 35,color: Colors.red,),
                    CommonText(text: "Delete Account",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.red,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
