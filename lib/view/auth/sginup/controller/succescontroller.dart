
// import 'package:ecommercecourse/core/constant/routes.dart';

import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:get/get.dart';

// abstract class SuccessSignUpController extends GetxController {
//   goToPageLogin();
// }

// class SuccessSignUpControllerImp extends SuccessSignUpController {
//   @override
//   goToPageLogin() {
//     Get.offAllNamed(AppRoute.login);
//   }
// }