

import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {

goToPageLogin() ; 

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
     Get.offAllNamed(AppRoute.login) ; 
  }

}
// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:get/get.dart';

// abstract class SuccessForgetPasswordController extends GetxController {
//   goToPageLogin();
// }

// class SuccessForgetPasswordControllerImp extends SuccessForgetPasswordController {
//   @override
//   goToPageLogin() {
//     Get.offAllNamed(AppRoute.login);
//   }
// }