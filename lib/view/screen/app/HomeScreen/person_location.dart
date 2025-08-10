

import 'package:flutter/material.dart';
import '../../../component/CommonText.dart';
import '../../../component/common_button.dart';

class PersonLocation extends StatelessWidget {
  const PersonLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/map.png",fit: BoxFit.fitWidth,),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 250,
                width:380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                       Column(
                         children: [
                           Row(
                             spacing: 10,
                             children: [
                               Container(height: 60,
                               width: 60,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                               ),child: ClipOval(
                                     child: Image.asset(
                                       "assets/images/image.jpeg",
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CommonText(text: "David Peter",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      CommonText(text: "Zombo",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,),
                                    ],
                                  )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(height: 30,),
                           CommonText(text: "Party enthusiast | Music lover | Always down for a good vibe 🎵",fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white,),
                          SizedBox(height: 30,),
                          Row(
                            spacing: 10,
                            children: [
                              Expanded(child: CommonButton(titleText: "Add Friend",buttonWidth: 170,titleColor: Colors.white,backgroundColor: Colors.deepPurpleAccent,borderColor: Colors.deepPurpleAccent,titleSize: 18,)),
                              Expanded(child: CommonButton(titleText: "Message",buttonWidth: 170,titleColor: Colors.white,backgroundColor: Colors.deepPurpleAccent,borderColor: Colors.deepPurpleAccent,titleSize: 18,)),
                            ],
                          )
                         ],
                       ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.cancel,color: Colors.white,)))
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 20,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.cancel_outlined,size: 40,color: Colors.grey,))),
        ],
      ),
    );
  }
}
