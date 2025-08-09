import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivepal/view/component/common_button.dart';
import '../../../component/CommonText.dart';

class ClubDetails extends StatelessWidget {
  const ClubDetails({super.key});

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
          text: "Nearby Places",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 352,
                width: 408,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/clubdetails.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 375,
                width: 408,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade900,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    CommonText(text: "Underground Beats",fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white,),
                    CommonText(
                      textAlign: TextAlign.start,
                      text: "Join us for an unforgettable night of underground electronic beats. The city's hottest DJs will be spinning all night long.",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white,),
                    Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.location_on_sharp,color: Colors.deepPurpleAccent,),
                        CommonText(text: "Club Neon",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,)
                      ],
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.timelapse,color: Colors.deepPurpleAccent,),
                        CommonText(text: "12 July• 9:00 PM-2:00 AM",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,)
                      ],
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.person_3,color: Colors.deepPurpleAccent,),
                        CommonText(text: "47 people attending",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,)
                      ],
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        CommonText(text: "Price :",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,),
                        CommonText(text: "\$25",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,),
                      ],
                    ),
                    SizedBox(height: 20,),
                    CommonButton(titleText: "RSVP",titleSize: 18,titleWeight: FontWeight.w600,backgroundColor: Colors.deepPurpleAccent,borderColor: Colors.deepPurpleAccent,),
                  ],
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
