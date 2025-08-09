import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/view/component/common_button.dart';

import '../../../component/CommonText.dart';
import '../../../component/commont_textfield.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

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
          text: "Edit Profile",
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
              SizedBox(height: 32),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 141.h,
                      width: 141.w,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/image.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        radius: 20,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.camera_alt, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              CommonText(
                text: "Full Name",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              SizedBox(height: 6),
              CommonTextField(
                prefixIcon: Icon(Icons.person),
                hintText: "Enter your full name",
                hintTextColor: Colors.grey.shade700,
                fillColor: Colors.grey.shade900,
                borderColor: Colors.grey.shade900,
              ),
              SizedBox(height: 10),
              CommonText(
                text: "Email",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              SizedBox(height: 6),
              CommonTextField(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Enter your email",
                hintTextColor: Colors.grey.shade700,
                fillColor: Colors.grey.shade900,
                borderColor: Colors.grey.shade900,
              ),
              SizedBox(height: 10),
              CommonText(
                text: "Phone Number",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              SizedBox(height: 6),
              CommonTextField(
                prefixIcon: Icon(Icons.phone),
                hintText: "Enter your phone number",
                hintTextColor: Colors.grey.shade700,
                fillColor: Colors.grey.shade900,
                borderColor: Colors.grey.shade900,
              ),
              SizedBox(height: 190),

              CommonButton(
                onTap: (){},
                titleText: "Edit Profile",backgroundColor: Colors.deepPurple,titleSize: 20,titleWeight: FontWeight.w500,)
            ],
          ),
        ),
      ),
    );
  }
}
