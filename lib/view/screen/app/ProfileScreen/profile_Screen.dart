import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/view/component/CommonText.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/edit_profile_screen.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/friendsScreen.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/my_post_screen.dart';
import 'package:vivepal/view/screen/app/ProfileScreen/recent_events.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: CommonText(text: "Profile",fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                height: 234,
                width: 408,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         spacing: 10,
                         children: [
                           Container(
                             height: 60,
                             width: 60,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                             ),
                             child:ClipOval(
                               child: Image.asset(
                                 "assets/images/image.jpeg",
                                 width: 40,
                                 height: 40,
                                 fit: BoxFit.cover,
                               ),
                             ),
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CommonText(text: "Alex Johnson",fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white,),
                               Row(
                                 children: [
                                   Icon(Icons.location_on,color: Colors.white,),
                                   CommonText(text: "Zombo",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                        IconButton(onPressed: (){
                          Get.to(()=>EditProfileScreen());
                        }, icon: Icon(Icons.edit,size: 35,color: Colors.white,))

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        CommonText(text: "Party enthusiast ",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white,),
                        SizedBox(
                          height:12,
                          child: Row(
                            children: [
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 2,
                                width: 20,      // total width it takes, including spacing
                                indent: 0,      // optional: top spacing
                                endIndent: 0,)   // optional: bottom spacing
                            ],
                          ),
                        ),
                        CommonText(text: "Event creator",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white,),
                        SizedBox(
                          height:12,
                          child: Row(
                            children: [
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 2,
                                width: 20,      // total width it takes, including spacing
                                indent: 0,      // optional: top spacing
                                endIndent: 0,)   // optional: bottom spacing
                            ],
                          ),
                        ),
                        CommonText(text: "Nightlife lover",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white,),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.calendar_month,color: Colors.white,size: 22,),
                        CommonText(text: DateTime.now().toString().substring(0,11),color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500,),
                      ],
                    ),
                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>FriendScreen());
                      },
                      child: Row(
                        children: [
                          CommonText(text: "20",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                          CommonText(text: "Friends",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                width: 408,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(text: "Recent Events",fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => RecentEvents());
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
                    SizedBox(height: 15,),
                    ListView.builder(
                     itemCount: 3,
                       shrinkWrap: true,
                       physics: ScrollPhysics(),
                       itemBuilder: (context,index){
                     return  Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10),
                       child: Row(
                         spacing: 10,
                         children: [
                           Container(
                             height: 74.h,
                             width: 66.w,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.white
                             ),
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             spacing: 10,
                             children: [
                               CommonText(text: "Rooftop Vibes",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                               CommonText(text: "Club Neon",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),

                             ],
                           )
                         ],
                       ),
                     );
                   }),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                width: 408,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(text: "My Posts",fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => MyPostScreen());
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
                    SizedBox(height: 15,),
                    ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context,index){
                          return  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              spacing: 15,
                              children: [
                                CommonText(
                                  textAlign: TextAlign.start,
                                  text: "Amazing night at the underground party! The vibe was incredible 🔥",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonText(text: "2 hours ago",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey,),
                                    Row(
                                      spacing: 10,
                                      children: [
                                        CommonText(text: "10 Likes",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey,),
                                        CommonText(text: "2 comments",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey,),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(thickness: 1,color: Colors.grey.shade900,),
                              ],
                            ),
                          );
                        }),
                    SizedBox(height: 15,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
