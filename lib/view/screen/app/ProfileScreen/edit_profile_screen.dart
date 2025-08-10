import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/helper/app_routes.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/privacy_policy.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/terms&Services.dart';

import '../../../component/CommonText.dart';
import 'contact_us.dart';
import 'feedback_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.white,)),
        title: CommonText(text: "Edit Profile",fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              CommonText(text: "General",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
              SizedBox(height: 10,),
              _buildRowBar(title: 'Edit Profile', icon:Icons.person, onTap: () {Get.toNamed(AppRoutes.editPage);}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              _buildRowBar(title: 'Settings', icon:Icons.settings, onTap: () {Get.toNamed(AppRoutes.setting);}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              SizedBox(height: 20,),
              CommonText(text: "Support & Help",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
              SizedBox(height: 10,),
              _buildRowBar(title: 'Feedback', icon:Icons.feedback, onTap: () {Get.to(()=>FeedbackScreen());}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              _buildRowBar(title: 'FAQ', icon:Icons.question_answer, onTap: () {}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              _buildRowBar(title: 'Contact Us', icon:Icons.contact_page, onTap: () {Get.to(()=>ContactUs());}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              SizedBox(height: 20,),
              CommonText(text: "Legal",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
              SizedBox(height: 10,),
              _buildRowBar(title: 'Terms of Service', icon:Icons.local_laundry_service, onTap: () {Get.to(()=>TermsServices());}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              _buildRowBar(title: 'Privacy Policy', icon:Icons.privacy_tip, onTap: () {Get.to(()=>PrivacyPolicy());}),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              SizedBox(height: 20,),
              CommonText(text: "Others",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.logout_outlined,size: 35,color: Colors.red,),
                      CommonText(text: "Logout",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.red,),
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
