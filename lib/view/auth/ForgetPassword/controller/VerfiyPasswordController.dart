

import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {  

  late String verifycode  ; 

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
    
  }

  @override
  void onInit() {  
    super.onInit();
  }

 
}
// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:get/get.dart';

// abstract class VerfiyCodeController extends GetxController {
//   CheckCode();
//   GotoResetPassword();
// } 

// class VerfiyCodeControllerImp extends VerfiyCodeController {
//   late String verfiyCode;

//   @override
//   CheckCode() {}

//   @override
//   GotoResetPassword() {
//     Get.offNamed(AppRoute.resetPassword);
//   }
  

// } 