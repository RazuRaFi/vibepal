
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivepal/view/component/CommonText.dart';

import 'club_details.dart';

class NearbyClub extends StatelessWidget {
  const NearbyClub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.white,)),
        title: CommonText(text: "Nearby Places",fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 30,),
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Get.to(()=>ClubDetails());
                      },
                      child: Container(
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
