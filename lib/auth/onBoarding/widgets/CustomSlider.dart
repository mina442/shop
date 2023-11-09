
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/onBoarding/Data/DataSourse/Static/static.dart';
import 'package:shop_app/auth/onBoarding/controller/OnBoardingController.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardingList[i].image!,
                  // width: ,
                  height: Get.width / 1.3,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 60),
                Text(onBoardingList[i].title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: AppColor.black)),
                const SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )),
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

// class CustomSliderOnBoard extends GetView<OnBoardingControllerImp> {
//   const CustomSliderOnBoard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       controller: controller.pageController,
//       onPageChanged: (value) => controller.onPageChanged(value),
//                   itemCount: onBoardingList.length,
//                   itemBuilder:(context, index) => Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//               Text(onBoardingList[index].title!,
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//                 color: AppColor.black),),
//               Image.asset(
//                 onBoardingList[index].image!,
//                 width: 200,height: 250 ,
//                 fit: BoxFit.fill
//               ,),
//               Container(
//                 width: double.infinity,
//                 alignment: Alignment.center,
//                 child: Text(onBoardingList[index].body!,
//                 style: const TextStyle(
//             fontSize: 20,height: 2,
//             color: AppColor.grey,
//             fontWeight:FontWeight.bold),
//                 textAlign: TextAlign.center,)),
//                ],
//                   ),)
//  ;
//   }
// }