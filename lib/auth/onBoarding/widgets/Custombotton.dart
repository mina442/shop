

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/onBoarding/controller/OnBoardingController.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          color: AppColor.primaryColor,
          child: Text("8".tr)),
    );
  }
}

// // import 'package:e_commerce/Controller/OnBoardingController.dart';
// import 'package:e_commerce/Controller/OnBoardingController.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/core/constant/color.dart';
// // import 'package:e_commerce/controller/onboarding_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomBottonOnBoarding extends GetView<OnBoardingControllerImp> {
//   const CustomBottonOnBoarding({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return    Container(
//                 margin: const EdgeInsets.only(bottom: 30),
//                 height: 40,
//                 color: AppColor.primaryColor,
//                 child: MaterialButton(
//                   padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 0),
//                   textColor:Colors.white,
//                   onPressed:() {
//                              controller.next();   
//                               }, child:  Text("8".tr,
//                               style: const TextStyle(fontWeight: FontWeight.bold,),)),
//               );
//   }
// }