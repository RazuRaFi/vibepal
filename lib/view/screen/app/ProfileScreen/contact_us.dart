import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../component/CommonText.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
          text: "Feedback",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ContactBox(icon: "assets/icons/email.png",title: "Email",color: Colors.white,),
            ContactBox(icon: "assets/icons/whatsapp.png",title: "Whatsapp",color: Colors.green,),
            ContactBox(icon: "assets/icons/instagram.png",title: "Instagram",color: Colors.red,),
            ContactBox(icon: "assets/icons/facebook.png",title: "Facebook",color: Colors.blue,),

          ],
        ),
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key, required this.title, required this.icon, required this.color,

  });
  final String title;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 15),
      height: 72,
      width: 410,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.grey.shade900,
      ),
      child: Row(
        spacing: 20,
        children: [
         Image.asset(icon,height: 30,width: 30,),
          CommonText(text: title,fontSize:18,fontWeight: FontWeight.w600,color:color,)
        ],
      ),
    );
  }
}
