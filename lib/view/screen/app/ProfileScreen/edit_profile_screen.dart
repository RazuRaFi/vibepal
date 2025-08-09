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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   spacing: 15,
                   children: [
                     Icon(Icons.person,size: 35,color: Colors.deepPurple,),
                     CommonText(text: "Edit Profile",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                   ],
                 ),
                  IconButton(onPressed: (){
                    Get.toNamed(AppRoutes.editPage);
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
                      Icon(Icons.settings,size: 35,color: Colors.deepPurple,),
                      CommonText(text: "Settings",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Get.toNamed(AppRoutes.setting);

                  }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 22,color: Colors.deepPurple,))
                ],
              ),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              SizedBox(height: 20,),
              CommonText(text: "Support & Help",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.feedback,size: 35,color: Colors.deepPurple,),
                      CommonText(text: "Feedback",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Get.to(()=>FeedbackScreen());

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
                      Icon(Icons.question_answer,size: 35,color: Colors.deepPurple,),
                      CommonText(text: "FAQ",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,size: 22,color: Colors.deepPurple,))
                ],
              ),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.contact_page,size: 35,color: Colors.deepPurple,),
                      CommonText(text: "Contact Us",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Get.to(()=>ContactUs());

                  }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 22,color: Colors.deepPurple,))
                ],
              ),
              Divider(thickness: 1,color: Colors.grey.shade900,),
              SizedBox(height: 20,),
              CommonText(text: "Legal",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      Icon(Icons.local_laundry_service,size: 35,color: Colors.deepPurple,),
                      CommonText(text: "Terms of Service",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Get.to(()=>TermsServices());
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
                      Icon(Icons.privacy_tip,size: 35,color: Colors.deepPurple,),
                      CommonText(text: "Privacy Policy",fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Get.to(()=>PrivacyPolicy());
                  }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 22,color: Colors.deepPurple,))
                ],
              ),
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
}
