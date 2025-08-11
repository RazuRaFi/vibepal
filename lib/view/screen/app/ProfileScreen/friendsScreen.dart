import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/view/component/CommonText.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: CommonText(text: "Friends",fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 10,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.shade800,
                            )
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child:ClipOval(
                                child: Image.asset(
                                  "assets/images/image.jpeg",
                                  width: 35,
                                  height: 35,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            CommonText(text: "Aisha Nansubuga",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          radius: 22,
                          child: Icon(Icons.message_outlined,size: 25,color: Colors.white,),
                        ),
                      ],
                    )
                );
              })

            ],
          ),
        ),
      ),
    );
  }
}
