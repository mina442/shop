

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/auth/onBoarding/controller/OnBoardingController.dart';
import 'package:shop_app/view/auth/onBoarding/widgets/CustomDotsCpntroller.dart';
import 'package:shop_app/view/auth/onBoarding/widgets/CustomSlider.dart';
import 'package:shop_app/view/auth/onBoarding/widgets/Custombotton.dart';
import 'package:shop_app/core/constant/color.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}

// import 'package:e_commerce/Controller/OnBoardingController.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/View/Widgets/onBoarding/CustomSlider.dart';
// import 'package:e_commerce/View/Widgets/onBoarding/Custombotton.dart';
// import 'package:e_commerce/View/Widgets/onBoarding/CustomdotsCpntroller.dart';
// import 'package:e_commerce/core/constant/color.dart';
// // import 'package:e_commerce/controller/onboarding_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class OnBoarding extends StatelessWidget {
//   const OnBoarding({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Get.put(OnBoardingControllerImp()) ;
//     return const Scaffold(
//         backgroundColor: AppColor.backgroundcolor,
//         body: SafeArea(
//           child: Column(children: [
//              Expanded(
//               flex: 4,
//               child: CustomSliderOnBoard(),
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Column(
//                   children: [
//                     CustomDotsOnBoarding(),
//                     Spacer(flex: 2),
//                     CustomBottonOnBoarding()
//                   ],
//                 ))
//           ]),
//         ));
//   }
// }
// // // import 'package:e_commerce/Controller/OnBoardingController.dart';
// // import 'package:e_commerce/View/Widgets/onBoarding/CustomSlider.dart';
// // import 'package:e_commerce/View/Widgets/onBoarding/CustomTextBottonOnBoarding.dart';
// // import 'package:e_commerce/View/Widgets/onBoarding/Custombotton.dart';
// // import 'package:e_commerce/View/Widgets/onBoarding/CustomdotsCpntroller.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // class onBoarding extends StatelessWidget {
// //   const onBoarding({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     Get.put(OnBoardingControllerImp());
// //     return const Scaffold(
// //         body: SafeArea(
// //           child: Column(
// //             children: [
// //               Expanded(
// //                 flex: 4,
// //                 child:      CustomSliderOnBoard()           
// //               ),
// //                Expanded(
// //                   flex: 1,
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //           CustomDotsOnBoarding(),
// //                   Spacer(flex: 2,),
// //            CustomBottonOnBoarding(),
// //           // CustomTextBottonOnBoarding(),
// //                     ],
// //                   ),) ,
// //             ],
// //           ))
// //         );
// //   }
// // }