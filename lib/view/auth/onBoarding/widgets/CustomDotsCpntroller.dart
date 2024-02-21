

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/auth/onBoarding/Data/DataSourse/Static/static.dart';
import 'package:shop_app/view/auth/onBoarding/controller/OnBoardingController.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}

// // import 'package:e_commerce/Controller/OnBoardingController.dart';
// import 'package:e_commerce/Controller/OnBoardingController.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/Data/DataSourse/Static/static.dart';
// import 'package:e_commerce/core/constant/color.dart';
// // import 'package:e_commerce/controller/onboarding_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomDotsOnBoarding extends StatelessWidget {
//   const CustomDotsOnBoarding({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<OnBoardingControllerImp>(builder:(controller) => Row(
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
// ...List.generate(
//   onBoardingList.length, (index) => 
//   AnimatedContainer(
//     margin: const EdgeInsets.only(right: 5),
//     duration:const Duration(milliseconds: 900),
//     width: controller.currentPage == index? 20:10,
//     height:
//     // controller.currentPage == index? 20: controller.currentPage == index? 20:
//     10,
//   decoration: BoxDecoration(color: AppColor.primaryColor,
//   borderRadius: BorderRadius.circular(10)),))
//                       ],
//                  )); 
//   }
// }