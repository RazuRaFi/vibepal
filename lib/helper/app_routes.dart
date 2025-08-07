import 'package:get/get.dart';
import 'package:vivepal/view/screen/common/Logo_screen/logo_screen.dart';
import '../view/screen/common/ForgotPassword/forgotpassword.dart';
import '../view/screen/common/SignUp_screen/sign_up_screen.dart';
import '../view/screen/common/SingIn_screen/signIn_screen.dart';
import '../view/screen/common/VerifyIdentity/verify_identity.dart';
import '../view/screen/common/VerifyOtp/email_verify.dart';
import '../view/screen/common/VerifyOtp/phone_verify.dart';
import '../view/screen/common/splash_scren/splash_screen.dart';
import '../view/screen/test_screen.dart';





class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String splash = "/splash.dart";
  static const String logo = "/logo.dart";
  static const String signup = "/signup.dart";
  static const String verifyidentity = "/verifyidentity.dart";
  static const String mailverify = "/mailverify.dart";
  static const String phoneVerify = "/phoneVerify.dart";
  static const String signIn = "/signIn.dart";
  static const String forgotPassword = "/forgotPassword.dart";

  static List<GetPage> routes = [
    GetPage(
        name: test,
        page: () => const TestScreen(),
        transition: Transition.fade),
    GetPage(
        name: splash,
        page: () => const SplashScreen(),
        transition: Transition.fade),
    GetPage(
        name: logo,
        page: () => const LogoScreen(),
        transition: Transition.fade),
    GetPage(
        name: signup,
        page: () => const SignUpScreen(),
        transition: Transition.fade),
    GetPage(
        name: verifyidentity,
        page: () => const VerifyIdentity(),
        transition: Transition.fade),
    GetPage(
        name: mailverify,
        page: () => const EmailVerify(),
        transition: Transition.fade),
    GetPage(
        name:phoneVerify,
        page: () => const PhoneVerify(),
        transition: Transition.fade),
    GetPage(
        name:signIn,
        page: () =>const  SignInScreen(),
        transition: Transition.fade),
    GetPage(
        name:forgotPassword,
        page: () =>const  ForgotPassword(),
        transition: Transition.fade),



  ];
}