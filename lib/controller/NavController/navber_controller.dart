
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivepal/view/screen/app/ChatsScreen/chats_screen.dart';
import 'package:vivepal/view/screen/app/FeedsScreen/feeds_screen.dart';

import '../../view/screen/app/HomeScreen/homescreen.dart';
import '../../view/screen/app/ProfileScreen/profile_Screen.dart';

class NavController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomeScreen(),
    FeedScreen(),
    ChatsScreen(),
    ProfileScreen(),
  ];

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
