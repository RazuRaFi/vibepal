
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  RxBool isChecked=false.obs;
}