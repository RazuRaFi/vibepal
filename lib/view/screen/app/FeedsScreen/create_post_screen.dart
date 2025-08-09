import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../component/CommonText.dart';
import '../../../component/commont_textfield.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.white,)),
        title: CommonText(text: "Create Post",fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            CommonText(text: "What’s on your mind?",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
            SizedBox(height: 10,),
            CommonTextField(
              maxLines: 5,
              hintText: "Write Post",
              fillColor: Colors.grey.shade900,
              borderColor: Colors.grey.shade900,
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              width: 404,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload_file,size: 35,color: Colors.white,),
                  CommonText(text: "Upload Image",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
