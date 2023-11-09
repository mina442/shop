

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
      Get.offNamed(AppRoute.Home);
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
// import 'package:e_commerce/core/constant/routes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class LoginController extends GetxController {
//   login();
//   goToSignUp();
//   goToForgetPassword();
//   showPassword() ;
// }

// class LoginControllerImp extends LoginController {
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();

//   late TextEditingController email;
//   late TextEditingController password;

//   bool isshowpassword = true;

//   showPassword() {
//     isshowpassword = isshowpassword == true ? false : true;
//     update();
//   }

//   @override
//   login() {
//     var formdata = formstate.currentState;
//     if (formdata!.validate()) {
//       print("Valid");
//     } else {
//       print("Not Valid");
//     }
//   }


//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     super.dispose();
//   }
//   @override
//   goToSignUp() {
// // Get.offNamed(AppRoute.forgetPassword);
//     Get.offNamed(AppRoute.signUp);
//   }

//   @override
//   goToForgetPassword() {
//     Get.offNamed(AppRoute.forgetPassword);
//   }
// }

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class LoginController extends GetxController {
//   login();
//   goToSignUp();
//   goToFogetPassword();
// }

// class LoginControllerImp extends LoginController {
//   // GlobalKey<FormState> 
//   final LoginControllerfs = GlobalKey<FormState>();
//   late TextEditingController email;
//   late TextEditingController password;

//   @override
//   login() {
//     // var formdata = formState.currentState;
//     if(LoginControllerfs.currentState!.validate()){
//       print("valid");

//     }
//     else{
//       print("not valid");
//     }
//   }

//   @override
//   goToSignUp() {
//     Get.toNamed(AppRoute.signUp);
//   }
//   @override
//   goToFogetPassword() {
//     Get.toNamed(AppRoute.forgetPassword);
//   }

//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     LoginControllerfs.currentState!.dispose();
//     password.dispose();
//     super.dispose();
//   }
  
// }