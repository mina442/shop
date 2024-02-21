

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/auth/ForgetPassword/controller/ResetPasswordController.dart';
import 'package:shop_app/view/auth/widgets/customTextFormfield.dart';
import 'package:shop_app/view/auth/widgets/custombuttonauth.dart';
import 'package:shop_app/view/auth/widgets/customtextbodyauth.dart';
import 'package:shop_app/view/auth/widgets/customtexttitleauth.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/functions/validinput.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const SizedBox(height: 20),
                CustomTextTitleAuth(text: "35".tr),
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "35".tr),
                const SizedBox(height: 15),
                 CustomTextFormAuth(
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        mycontroller: controller.password,
                        hinttext: "13".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "19".tr,
                        // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        obscureText: controller.isshowrepassword,
                        onTapIcon: () {
                          controller.showrePassword();
                        },
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        mycontroller: controller.repassword,
                        hinttext: "Re" + " " + "13".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "Re" +"19".tr,
                        // mycontroller: ,
                      ),
                CustomButtomAuth(
                    text: "33".tr,
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    }),
                const SizedBox(height: 40),
              ]),
            ),
          );
        }
      ),
    );
  }
}

// // import 'package:e_commerce/Controller/auth/ForgetPassword/ResetPasswordController.dart';
// import 'package:e_commerce/Controller/auth/ForgetPassword/ResetPasswordController.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// // import 'package:e_commerce/Core/Functions/valideInput.dart';
// import 'package:e_commerce/View/Widgets/auth/customTextFormfield.dart';
// import 'package:e_commerce/View/Widgets/auth/custombuttonauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtextbodyauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtexttitleauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:e_commerce/core/functions/validinput.dart';
// // import 'package:e_commerce/controller/auth/resetpassword_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ResetPassword extends StatelessWidget {
//   const ResetPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//      ResetPasswordControllerImp controller4= Get.put(ResetPasswordControllerImp());
//    return Scaffold(
//       appBar: AppBar(
//         leading: const BackButton(
//           color: AppColor.black,
//         ),
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('Reset Password',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),)),
//       body: 
//       Center(child: Container(
//         padding: const EdgeInsets.symmetric(vertical:15,horizontal: 35),
//         child: Form(
//           key: controller4.ResetPasswordControllerfs,
//           child: ListView(
//             children: [
//               //addlogo v16
//                const SizedBox(height: 20,), 
//              CustomTextTitleAuth(text: '35'.tr)
//               ,const SizedBox(height: 10),
//               Container(
//               margin: const EdgeInsets.symmetric(horizontal: 30),
//               child: CustomTextBodyAuth(text: '35'.tr,) 
//             ),
//             const SizedBox(height: 65), 
//            CustomTextFormField(
//               // key: controller4.formstate,

//             val: (val) {
//               return validInput(val!, 5 , 100 , 'password');
                
//               },
//               // controller: controller.password,
//               hintText: '13'.tr, 
//               labelText: "19".tr, 
//               iconData: Icons.lock_clock_outlined,),
//             const SizedBox(height: 20,),  
//            CustomTextFormField(
//               // key: controller4.formstate,

//             val: (val) {
//               return validInput(val!, 5 , 100 , 'password');
                
//               },
//               // controller: controller.password,
//               hintText: "Re ${"13".tr}", 
//               labelText: "19".tr, 
//               iconData: Icons.lock_clock_outlined,),
//             const SizedBox(height: 20,),
//             CustomButtomAuth(text: "33".tr,onPressed: (){
//              controller4.gotoSuccesResetPassword();
//             },),
//             // Row(kjjl      
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: [
//             //     Text(),
//             //     TextButton(onPressed:, child: Text(,style: 
//             //        Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.primaryColor)
//             //     ,))
        
//             //   ],
//             // )
//             ],
//           ),
//         )),
//         // child: Container(
//         //   child:  Text('jakjkjhsa'),
//         // ),
//       ),
//     );
 
//   }
// }