

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> pages = [
    // HomeScreen(),
    // OffeScreen(),
    // HistoryScreen(),
    // ProfileScreen(),
  ];
}