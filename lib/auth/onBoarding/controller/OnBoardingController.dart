
// import 'package:ecommercecourse/core/constant/routes.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/onBoarding/Data/DataSourse/Static/static.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/core/services/services.dart';

// import '../data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {

  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  
  late PageController pageController; 
  MyServices myServices =Get.find();

  int currentPage = 0;

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
       myServices.sharedPreferences.setString('onBoarding', '1');
       Get.offAllNamed(AppRoute.login) ; 
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}


// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// import 'package:e_commerce/Data/DataSourse/Static/static.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// abstract class OnBoardingController extends GetxController{
//   next();
//   onPageChanged(int index);

// } 

// class OnBoardingControllerImp extends OnBoardingController{
// late PageController pageController; 
//  int currentPage = 0 ;
//   @override
//   next() {
//    currentPage++;
//    currentPage > onBoardingList.length-1?Get.offAllNamed(AppRoute.login):
// pageController.animateToPage(
//   currentPage, 
//   duration: const Duration(milliseconds: 900), 
//   curve: Curves.easeInOut);
//   }

//   @override
//   onPageChanged(int index) {
//      currentPage = index;
//      update();
//   }
// @override
//   void onInit() {
// pageController=PageController();
//     super.onInit();
//   }
// }