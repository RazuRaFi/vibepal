import 'package:flutter/material.dart';
import 'package:vivepal/Utils/App_colors.dart';
import 'package:vivepal/view/component/CommonText.dart';
import 'package:vivepal/view/component/commont_textfield.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: CommonText(text: "Chats",fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.white,),
        centerTitle: true,
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                CommonTextField(
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: "Search for messages",
                  fillColor: Colors.grey.shade900,
                  borderColor: Colors.grey.shade900,
                  hintTextColor: Colors.white,
                ),
                SizedBox(height: 50),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Prevent double scroll
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/image.jpeg",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonText(
                                  text: "RaFiuL RaZu",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                                CommonText(
                                  textAlign: TextAlign.start,
                                  text: "Where’s your exact location?",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          CommonText(
                            text: DateTime.now().toString().substring(0, 11),
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                    );

                  },
                ),
              ],
            ),
          ),
        ),

    );
  }
}
