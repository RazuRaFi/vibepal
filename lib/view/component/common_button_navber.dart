

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vivepal/Utils/App_colors.dart';

import '../../Utils/app_string.dart';
import '../../controller/NavController/navber_controller.dart';


class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController());
    return Obx(() => Scaffold(
      backgroundColor:AppColors.black,
      body: navController.pages[navController.selectedIndex.value],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SizedBox(
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            elevation: 10,
            currentIndex: navController.selectedIndex.value,
            onTap: navController.changeTab,
            selectedItemColor: AppColors.navber,
            unselectedItemColor:AppColors.navber,
            selectedFontSize: 15,
            unselectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.percent), label: "Feeds"),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: "Chats"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label:"Profile"),
            ],
          ),
        ),
      ),


    ));;
  }
}
