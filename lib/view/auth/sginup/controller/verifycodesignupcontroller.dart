
// import 'package:ecommercecourse/core/constant/routes.dart'; 

import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {  

  late String verifycode  ; 

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {  
    super.onInit();
  }

 
}

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:get/get.dart';

// abstract class VerfiyCodeSignUpController extends GetxController {
//   CheckCode();
//   GotoSuccesSignUp();
// } 

// class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
//   late String verfiyCode;

//   @override
//   CheckCode() {}

//   @override
//   GotoSuccesSignUp() {
//     Get.offNamed(AppRoute.successSignUp);
//   }
  

// } 