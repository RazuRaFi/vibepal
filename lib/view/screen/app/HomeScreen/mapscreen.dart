import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/view/component/CommonText.dart';
import 'package:vivepal/view/component/common_button.dart';
import 'package:vivepal/view/screen/app/HomeScreen/person_location.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

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
            height: 279,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 133,
                      width: 336,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/clubdetails.png",fit: BoxFit.cover,),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.cancel,color: Colors.white,)))
                  ],
                ),
                SizedBox(height: 10,),
                CommonText(text: "Underground Beats",fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white,),
                SizedBox(height: 20,),
                CommonButton(
                  onTap: (){
                    Get.to(()=>PersonLocation());
                  },
                  titleText: "RSVP",backgroundColor: Colors.deepPurpleAccent,borderColor: Colors.deepPurpleAccent,)
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
