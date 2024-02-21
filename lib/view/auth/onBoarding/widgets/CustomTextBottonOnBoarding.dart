
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/auth/onBoarding/controller/OnBoardingController.dart';
import 'package:shop_app/core/constant/routes.dart';

class CustomTextBottonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomTextBottonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return                    TextButton(onPressed:() {
                  Get.offAllNamed(AppRoute.login)  ;
               }, child:  Text("1111".tr.tr,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30),));
 
  }
}