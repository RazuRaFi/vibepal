import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../component/CommonText.dart';
import 'create_post_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: CommonText(text: "Feed",fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      height: 540,
                      width: 408,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                          border: Border.all(color: Colors.grey.shade800)
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
                                    height: 50,
                                    width: 50,
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
                                      CommonText(text: "Emmanuel Kato",fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white,),
                                      CommonText(text: "2h Ago",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),

                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined,size: 24,color: Colors.white,)),

                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          CommonText(
                            textAlign: TextAlign.start,
                            text: "Amazing night at the underground party! The vibe was incredible 🔥",fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),
                          Container(
                            height: 366,
                            width: 380,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/frameone.png"),
                          ),
                          Row(
                            spacing: 10,
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 30,color: Colors.white,)),
                                  CommonText(text: "15",fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white,),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.comment_sharp,size: 30,color: Colors.white,)),
                                  CommonText(text: "6",fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white,),
                                ],
                              ),
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

     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.deepPurpleAccent,
            onPressed: () {
         Get.to(()=>CreatePostScreen());

            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.add,color: Colors.white,),
          ),

    );
  }
}
