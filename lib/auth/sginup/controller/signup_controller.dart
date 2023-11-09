
// import 'package:e_commerce/core/constant/routes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
// }

// class SignUpControllerImp extends SignUpController {
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();

//   late TextEditingController username;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;

//   @override
//   signUp() {
//     if (formstate.currentState!.validate()) {
//       Get.offNamed(AppRoute.verfiyCodeSignUp);
//     } else {}
//   }

//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }

//   @override
//   void onInit() {
//     username = TextEditingController();
//     phone = TextEditingController();
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     email.dispose();
//     phone.dispose();
//     password.dispose();
//     super.dispose();
//   }
// }
// import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:e_commerce/Controller/auth/login_controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController repassword;

  bool isshowpassword = true;
// Crud _crud = Crud();
  @override
  signUp() {
//     if (formstate.currentState!.validate()) {

//    var response =   await _crud.postRequest(linkSignup, {
// "username" : username.text,
// "email" : email.text,
// "password" : password.text,

//       });
//       if(response['status']=="success"){
//         Get.offAllNamed(AppRoute.Home);
//       }else{
//         print('signup fail');
//       }
      Get.offNamed(AppRoute.verfiyCodeSignUp);
      // 1111111112121212121212121212121
      // Get.delete<LoginControllerImp>();

      // Get.delete<ForgetPasswordControllerImp>();

    // } else {
    //   print("Not Valid");
    // }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    repassword.dispose();

    super.dispose();
  }
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
bool isshowrepassword = true;

  showrePassword() {
    isshowrepassword = isshowrepassword == true ? false : true;
    update();
  }
}

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';

// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
// }

// class SignUpControllerImp extends SignUpController {
//   // GlobalKey<FormState> 
// final  SignUpControllerfs = GlobalKey<FormState>();

//   late TextEditingController username;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;

//   @override
//   signUp() {
//     //  var formdata = formState.currentState;
//     if(SignUpControllerfs.currentState!.validate()){
//       print("valid");
//         Get.offNamed(AppRoute.verfiyCodeSignUp);
//         // Get.delete<SignUpControllerImp>();
//     // Get.offNamed(AppRoute.CheckEmail);
//     // goToSignIn();

//     }
//     else{
//       print("not valid");
//     }
//   }

//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }

//   @override
//   void onInit() {
//     username = TextEditingController() ; 
//     phone = TextEditingController() ; 
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     email.dispose();
//     phone.dispose();
//     password.dispose();
//     SignUpControllerfs.currentState!.dispose();
//     super.dispose();
//   }
// }