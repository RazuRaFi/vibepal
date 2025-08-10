
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/helper/app_routes.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/change_password.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/privacy_setting.dart';

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
           _buildRowBar(title: "Privacy Settings", icon: Icons.privacy_tip, onTap: (){Get.to(()=>PrivacySettings());}),
            Divider(thickness: 1,color: Colors.grey.shade900,),
            _buildRowBar(title: "Change Password", icon: Icons.lock, onTap: (){Get.to(()=>ChangePassword());}),
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
  GestureDetector _buildRowBar({
    required String title,
    required IconData icon,
    required VoidCallback onTap, // new onTap parameter
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 15,
            children: [
              Icon(icon, size: 35, color: Colors.deepPurple),
              CommonText(
                text: title,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 22,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
