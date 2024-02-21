

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/auth/onBoarding/widgets/language/Customlanguagebotton.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/core/localization/changelocal.dart'; 

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed(AppRoute.onBoarding) ; 
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoute.onBoarding) ; 
                  }),
            ],
          )),
    );
  }
}

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// // import 'package:e_commerce/Core/Localization/changeLocalization.dart';
// import 'package:e_commerce/View/Widgets/language/Customlanguagebotton.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:e_commerce/core/localization/changelocal.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Language extends GetView<LocaleController> {
//   const Language({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('1'.tr , style: Theme.of(context).textTheme.headlineLarge),
//             const SizedBox(
//               height: 20,
//             ) ,
//             CustomLanguageBotton (
//               textbutton: 'Ar',
//               onpressed: () {
//                 controller.changeLang('ar');
//                 Get.toNamed(AppRoute.onBoarding);
//               },
//             ),
//               CustomLanguageBotton (
//               textbutton: 'EN ',
//               onpressed: () {
//                 controller.changeLang('en');
//                 Get.toNamed(AppRoute.onBoarding);
                
//               },
//             ),
//          ],
//         ),
//       ),
//     );
//   }
// }