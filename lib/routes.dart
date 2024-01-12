
import 'package:get/get.dart';
import 'package:shop_app/auth/ForgetPassword/screens/ForgetPassword.dart';
import 'package:shop_app/auth/ForgetPassword/screens/ResetPassword.dart';
import 'package:shop_app/auth/ForgetPassword/screens/SuccesResetPassword%20copy.dart';
import 'package:shop_app/auth/ForgetPassword/screens/VerfiyCode.dart';
import 'package:shop_app/auth/login/screens/login.dart';
import 'package:shop_app/auth/onBoarding/screen/language.dart';
import 'package:shop_app/auth/onBoarding/screen/onBoarding.dart';
import 'package:shop_app/auth/sginup/SuccesSignup.dart';
import 'package:shop_app/auth/sginup/signup.dart';
import 'package:shop_app/auth/sginup/verfiysignup.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/core/middleware/mymiddleware.dart';
import 'package:shop_app/home/home.dart';
import 'package:shop_app/home/items/items.dart';


List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.Home, page: () =>  const Home()),
  // GetPage(name: AppRoute.items, page: () => const Items()),


];
// List<GetPage<dynamic>>? routes= [
//   GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
//   GetPage(name: AppRoute.login, page: () => const Login()),
//   GetPage(name: AppRoute.signUp, page: () => const SignUp()),
//   GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
//   GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
//   GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
//   GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
//   GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
//   GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
//   GetPage(name: AppRoute.Test, page: () => const Test()),

// ];
// Map<String, Widget Function(BuildContext)> routess = {
//   // onBoarding
// AppRoute.onBoarding :(context) => const OnBoarding(),
// //  auth
// AppRoute.login :(context) => const Login(),
// AppRoute.signUp :(context) => const SignUp(),
// AppRoute.verfiyCode  :(context) => const VerfiyCode(),
// AppRoute.forgetPassword  :(context) => const ForgetPassword (),
// AppRoute.resetPassword  :(context) => const ResetPassword (),
// AppRoute.successResetpassword  :(context) => const SuccessResetPassword (),
// AppRoute.successSignUp  :(context) => const SuccessSignUp (),
// // AppRoute.CheckEmail  :(context) =>  const CheckEmail (),
// AppRoute.verfiyCodeSignUp  :(context) =>  const VerfiyCodeSignUp(),
// AppRoute.Test  :(context) =>  const Test(),




// };