import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/view/component/common_button.dart';
import 'package:vivepal/view/component/commont_textfield.dart';

import '../../../component/CommonText.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 CommonText(
                   text: "How are you feeling?",
                   fontSize: 24,
                   fontWeight: FontWeight.w500,
                   color: Colors.white,
                 ),
                 SizedBox(height: 15),
                 CommonText(
                   text:
                   "Your input is valuable in helping us better understand your needs and tailor our service accordingly.",
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   color: Colors.white,
                 ),
                 SizedBox(height: 10,),
                 SizedBox(
                   height: 20,
                   width: 250,
                   child: RatingBar.builder(
                     initialRating: 5,
                     minRating: 1,
                     direction: Axis.horizontal,
                     allowHalfRating: true,
                     itemCount: 5,
                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                     itemBuilder: (context, _) =>
                         Icon(Icons.star, color: Colors.amber),
                     onRatingUpdate: (rating) {
                       print(rating);
                     },
                   ),
                 ),
               ],
             ),
              SizedBox(height: 60,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(text: "How are we doing?",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                  SizedBox(height: 10,),
                  CommonTextField(
                    maxLines: 5,
                    hintText: "Write your answer",
                    fillColor: Colors.grey.shade900,
                    borderColor: Colors.grey.shade900,
                  )
                ],
              ),
              SizedBox(height: 260,),
              CommonButton(titleText: "Submit",backgroundColor: Colors.deepPurpleAccent,borderColor: Colors.deepPurple,),
            ],
          ),
        ),
      ),
    );
  }
}
