
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../component/CommonText.dart';

class TermsServices extends StatelessWidget {
  const TermsServices({super.key});

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
          text: "Terms of Service",
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
            ListView.builder(
              itemCount: 3,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 10,
                  children: [
                    CommonText(text: "1",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),
                    Expanded(
                      child: CommonText(
                        textAlign: TextAlign.start,
                        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
