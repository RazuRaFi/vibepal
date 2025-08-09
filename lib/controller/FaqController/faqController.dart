import 'package:get/get.dart';

class FaqController extends GetxController {
  var expandedIndex = (-1).obs;

  void toggleExpand(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // collapse if same index
    } else {
      expandedIndex.value = index;
    }
  }
}
