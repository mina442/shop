

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/ForgetPassword/controller/succescontroller.dart';
import 'package:shop_app/auth/widgets/custombuttonauth.dart';
import 'package:shop_app/core/constant/color.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          Text("37".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          Text("36".tr),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtomAuth(
                text: "31".tr,
                onPressed: () {
                  controller.goToPageLogin();
                }),
          ),
        ]),
      ),
    );
  }
}


// // import 'package:e_commerce/Controller/auth/ForgetPassword/succescontroller.dart';
// // import 'package:e_commerce/Controller/succescontroller.dart';
// import 'package:e_commerce/Controller/auth/ForgetPassword/succescontroller.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/View/Widgets/auth/custombuttonauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// // import 'package:e_commerce/controller/auth/successresetpassword_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SuccesResetPassword extends StatelessWidget {
//   const SuccesResetPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//      SuccessForgetPasswordControllerImp controller =
//         Get.put(SuccessForgetPasswordControllerImp());
//     return Scaffold(
//        appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('32'.tr,
//             style: Theme.of(context)
//                 .textTheme
//                 .headlineLarge!
//                 .copyWith(color: AppColor.grey)),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(15),
//         child: Column(children: [
//           const Center(
//               child: Icon(
//             Icons.check_circle_outline,
//             size: 200,
//             color: AppColor.primaryColor,
//           )),
//           Text("37".tr,
//               style: Theme.of(context)
//                   .textTheme
//                   .headlineLarge!
//                   .copyWith(fontSize: 30)),
//           Text("38".tr),
//           const Spacer(),
//           SizedBox(
//             width: double.infinity,
//             child: CustomButtomAuth(
//                 text: "31".tr,
//                 onPressed: () {
//                   controller.goToPageLogin();
//                 }),
//           ),
//           const SizedBox(height: 30)
//         ]),
//       ),
//     );
//   }
// }