import 'package:get/get.dart';
import 'package:vivepal/view/screen/common/Logo_screen/logo_screen.dart';
import '../view/component/common_button_navber.dart';
import '../view/screen/app/HomeScreen/club_details.dart';
import '../view/screen/app/HomeScreen/nearby_club.dart';
import '../view/screen/app/HomeScreen/nearby_events.dart';
import '../view/screen/app/ProfileScreen/change_password.dart';
import '../view/screen/app/ProfileScreen/edit_page.dart';
import '../view/screen/app/ProfileScreen/edit_profile_screen.dart';
import '../view/screen/app/ProfileScreen/friendsScreen.dart';
import '../view/screen/app/ProfileScreen/my_post_screen.dart';
import '../view/screen/app/ProfileScreen/privacy_setting.dart';
import '../view/screen/app/ProfileScreen/recent_events.dart';
import '../view/screen/app/ProfileScreen/settings_screen.dart';
import '../view/screen/common/CreateNewPassword/create_new_password.dart';
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
  static const String newpassword = "/newpassword.dart";
  static const String navber = "/navber.dart";
  static const String friends = "/friends.dart";
  static const String events = "/events.dart";
  static const String myPost = "/myPost.dart";
  static const String editProfile = "/editProfile.dart";
  static const String editPage = "/editPage.dart";
  static const String setting = "/setting.dart";
  static const String changePassword = "/changePassword.dart";
  static const String privacySettings = "/privacySettings.dart";
  static const String nearbyEvents = "/nearbyEvents.dart";
  static const String nearbyClub = "/nearbyClub.dart";
  static const String clubDetails = "/clubDetails.dart";

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
    GetPage(
        name:newpassword,
        page: () =>const  CreateNewPassword(),
        transition: Transition.fade),
    GetPage(
        name:navber,
        page: () =>const  NavBarScreen(),
        transition: Transition.fade),
    GetPage(
        name:friends,
        page: () =>const  FriendScreen(),
        transition: Transition.fade),
    GetPage(
        name:events,
        page: () =>const  RecentEvents(),
        transition: Transition.fade),
    GetPage(
        name:myPost,
        page: () =>const  MyPostScreen(),
        transition: Transition.fade),
    GetPage(
        name:editProfile,
        page: () =>const  EditProfileScreen(),
        transition: Transition.fade),
    GetPage(
        name:editPage,
        page: () =>const  EditPage(),
        transition: Transition.fade),
    GetPage(
        name:setting,
        page: () =>const  SettingsScreen(),
        transition: Transition.fade),
    GetPage(
        name:changePassword,
        page: () =>const  ChangePassword(),
        transition: Transition.fade),
    GetPage(
        name:privacySettings,
        page: () =>const  PrivacySettings(),
        transition: Transition.fade),
    GetPage(
        name:nearbyEvents,
        page: () =>const  NearbyEvents(),
        transition: Transition.fade),
    GetPage(
        name:nearbyClub,
        page: () =>const  NearbyClub(),
        transition: Transition.fade),
    GetPage(
        name:clubDetails,
        page: () =>const  ClubDetails(),
        transition: Transition.fade),



  ];
}