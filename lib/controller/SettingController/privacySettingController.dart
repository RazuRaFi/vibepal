import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProfileVisibilityController extends GetxController {
  var isVisible = true.obs;
  var isSwitch = true.obs;

  void toggleVisibility(bool value) {
    isVisible.value = value;
  }
  void toggleVisibility2(bool value) {
    isSwitch.value = value;
  }
}