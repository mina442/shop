

// import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verfiyCode);
      // Get.delete<LoginControllerImp>();

      // Get.delete<ForgetPasswordControllerImp>();

    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class ForgetPasswordController extends GetxController {
//   Checkemail();
//   GotoVrefiyCode();
// }

// class ForgetPasswordControllerImp extends ForgetPasswordController {
//   // GlobalKey<FormState> 
//   final ForgetPasswordControllerfs = GlobalKey<FormState>();

//   late TextEditingController email;

//   @override
//   Checkemail() {
//     //  var formdata = formState.currentState;
//     if(ForgetPasswordControllerfs.currentState!.validate()){
//       print("valid");
//    GotoVrefiyCode();

//     }
//     else{
//       print("not valid");
//     }
//   }

//   @override
//   GotoVrefiyCode() {
//     Get.offNamed(AppRoute.verfiyCode);
//   } 
  

//   @override
//   void onInit() {
//     email = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     ForgetPasswordControllerfs.currentState!.dispose();
//     super.dispose();
//   }
// } 