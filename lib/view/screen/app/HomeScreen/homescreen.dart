import 'package:flutter/material.dart';
import 'package:vivepal/view/component/CommonText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30,),
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
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade700,
                child: Icon(Icons.notifications_none_outlined,color: Colors.white,size: 25,),
              )
            ],
          )

        ],
      ),
    ),
    );
  }
}
