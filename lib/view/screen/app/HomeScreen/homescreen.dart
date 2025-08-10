import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivepal/view/component/CommonText.dart';
import 'package:vivepal/view/screen/app/HomeScreen/nearby_club.dart';
import 'package:vivepal/view/screen/app/HomeScreen/nearby_events.dart';
import 'package:vivepal/view/screen/app/HomeScreen/notifications.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(text: "Your Location",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),
                    Row(
                      children: [
                        CommonText(text: "Zombo",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,),
                        Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 28,),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(()=>NotificationScreen());
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.shade700,
                    child: Icon(Icons.notifications_none_outlined,color: Colors.white,size: 25,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Image.asset("assets/images/banner.png",fit: BoxFit.cover,),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(text: "Nearby Events",fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,),
                GestureDetector(
                  onTap: () {
                    Get.to(() => NearbyEvents());
                  },
                  child: Row(
                    children: [
                      CommonText(
                        text: "View All",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 105,
                    width: 408,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900,
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Row(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.center, // ⬅ Middle vertically
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 74,
                          width: 77,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/nightimage.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center, // ⬅ Middle inside column
                          children: [
                            CommonText(
                              text: "Rooftop Vibes",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            CommonText(
                              text: "Club Neon",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            CommonText(
                              text: "9:00 PM - 2:00 AM",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(text: "Nearby Places",fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,),
                GestureDetector(
                  onTap: () {
                    Get.to(() => NearbyClub());
                  },
                  child: Row(
                    children: [
                      CommonText(
                        text: "View All",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 105,
                    width: 408,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade900,
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Row(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.center, // ⬅ Middle vertically
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 74,
                          width: 77,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/club.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 10,
                          children: [
                            CommonText(
                              text: "Club Neon",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on,size: 25,color: Colors.white,),
                                CommonText(
                                  text: "Club Neon",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                })

          ],
        ),
      ),
    ),
    );
  }
}
