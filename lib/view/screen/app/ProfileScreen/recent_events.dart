import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vivepal/view/component/CommonText.dart';

class RecentEvents extends StatelessWidget {
  const RecentEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.white,)),
        title: CommonText(text: "Recent Events",fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
                  return  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade800)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        spacing: 10,
                        children: [
                          Container(
                            height: 74.h,
                            width: 74.w,
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
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
