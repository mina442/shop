
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
bool isshowrepassword = true;

  showrePassword() {
    isshowrepassword = isshowrepassword == true ? false : true;
    update();
  }

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() {
    if (formstate.currentState!.validate()) {
// if(password == repassword)
      Get.offNamed(AppRoute.successResetpassword);
      // Get.delete<ResetPasswordControllerImp>();
      
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class ResetPasswordController extends GetxController {
//   ResetPassword();
//   gotoSuccesResetPassword();
// }

// class ResetPasswordControllerImp extends ResetPasswordController {
//     GlobalKey<FormState> ResetPasswordControllerfs = GlobalKey<FormState>();

//   late TextEditingController PassWord;
//   late TextEditingController RePassWord;


//   @override
//   ResetPassword() {}

//   @override
//   gotoSuccesResetPassword() {
//      if (ResetPasswordControllerfs.currentState!.validate()) {
//       Get.offNamed(AppRoute.successResetpassword);
//     } else {
//       print("Not Valid");
//     }
//   }
  

//   @override
//   void onInit() {
//     PassWord = TextEditingController();
//     RePassWord = TextEditingController();

//     super.onInit();
//   }

//   @override
//   void dispose() {
//     RePassWord.dispose();
//     PassWord.dispose();
// ResetPasswordControllerfs.currentState!.dispose();
//     super.dispose();
//   }
// } 