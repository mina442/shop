

// import 'package:e_commerce/Controller/auth/signup_controller.dart';
// import 'package:e_commerce/View/Widgets/auth/CustomButtonSign.dart';
// import 'package:e_commerce/View/Widgets/auth/customTextFormfield.dart';
// import 'package:e_commerce/View/Widgets/auth/custombuttonauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtextbodyauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtexttitleauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:e_commerce/core/functions/alertexitapp.dart';
// import 'package:e_commerce/core/functions/validinput.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SignUp extends StatelessWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SignUpControllerImp controller = Get.put(SignUpControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('17'.tr,
//             style: Theme.of(context)
//                 .textTheme
//                 .headline1!
//                 .copyWith(color: AppColor.grey)),
//       ),
//       body: WillPopScope(
//           onWillPop: alertExitApp,
//           child: Container(
//             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//             child: Form(
//               key: controller.formstate,
//               child: ListView(children: [
//                 const SizedBox(height: 20),
//                 CustomTextTitleAuth(text: "10".tr),
//                 const SizedBox(height: 10),
//                 CustomTextBodyAuth(text: "24".tr),
//                 const SizedBox(height: 15),
//                 CustomTextFormAuth(
//                   isNumber: false,
//                   valid: (val) {
//                     return validInput(val!, 3, 20, "username");
//                   },
//                   mycontroller: controller.username,
//                   hinttext: "23".tr,
//                   iconData: Icons.person_outline,
//                   labeltext: "20".tr,
//                   // mycontroller: ,
//                 ),
//                 CustomTextFormAuth(
//                   isNumber: false,

//                   valid: (val) {
//                     return validInput(val!, 3, 40, "email");
//                   },
//                   mycontroller: controller.email,
//                   hinttext: "12".tr,
//                   iconData: Icons.email_outlined,
//                   labeltext: "18".tr,
//                   // mycontroller: ,
//                 ),
//                 CustomTextFormAuth(
//                   isNumber: true,
//                   valid: (val) {
//                     return validInput(val!, 7, 11, "phone");
//                   },
//                   mycontroller: controller.phone,
//                   hinttext: "22".tr,
//                   iconData: Icons.phone_android_outlined,
//                   labeltext: "21".tr,
//                   // mycontroller: ,
//                 ),
//                 CustomTextFormAuth(
//                   isNumber: false,

//                   valid: (val) {
//                     return validInput(val!, 3, 30, "password");
//                   },
//                   mycontroller: controller.password,
//                   hinttext: "13".tr,
//                   iconData: Icons.lock_outline,
//                   labeltext: "19".tr,
//                   // mycontroller: ,
//                 ),
//                 CustomButtomAuth(
//                     text: "17".tr,
//                     onPressed: () {
//                       controller.signUp();
//                     }),
//                 const SizedBox(height: 40),
//                 CustomTextSignUpOrSignIn(
//                   textone: "25".tr,
//                   texttwo: "26".tr,
//                   onTap: () {
//                     controller.goToSignIn();
//                   },
//                 ),
//               ]),
//             ),
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/sginup/controller/signup_controller.dart';
import 'package:shop_app/auth/widgets/CustomButtonSign.dart';
import 'package:shop_app/auth/widgets/customTextFormfield.dart';
import 'package:shop_app/auth/widgets/custombuttonauth.dart';
import 'package:shop_app/auth/widgets/customtextbodyauth.dart';
import 'package:shop_app/auth/widgets/customtexttitleauth.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/core/functions/alertexitapp.dart';
import 'package:shop_app/core/functions/validinput.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar( 
        //      leading: const BackButton(
           
        //   color: AppColor.black,
          
        // ),

        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
            builder: (controller) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "10".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "24".tr),
                    const SizedBox(height: 15),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 3, 20, "username");
                      },
                      mycontroller: controller.username,
                      hinttext: "23".tr,
                      iconData: Icons.person_outline,
                      labeltext: "20".tr,
                      // mycontroller: ,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,

                      valid: (val) {
                        return validInput(val!, 3, 40, "email");
                      },
                      mycontroller: controller.email,
                      hinttext: "12".tr,
                      iconData: Icons.email_outlined,
                      labeltext: "18".tr,
                      // mycontroller: ,
                    ),
                    CustomTextFormAuth(
                      isNumber: true,
                      valid: (val) {
                        return validInput(val!, 7, 11, "phone");
                      },
                      mycontroller: controller.phone,
                      hinttext: "22".tr,
                      iconData: Icons.phone_android_outlined,
                      labeltext: "21".tr,
                      // mycontroller: ,
                    ),
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
            //           CustomTextFormAuth(
            //   obscureText:  controller.showPassword,
            //   isNumber: false ,
            //    onTapIcon: () {
            //           controller.showPassword();
            //         },

            //   valid: (val) {
            //     return validInput(val!, 3, 40, "password");
            //   },
            //   mycontroller: controller.repassword,
            //   hinttext: "Re" + " " + "13".tr,
            //   iconData: Icons.lock_outline,
            //   labeltext: "Re" +"19".tr,
            //   // mycontroller: ,
            // ),
                    CustomButtomAuth(
                        text: "17".tr,
                        onPressed: () {
                          controller.signUp();
                        }),
                    const SizedBox(height: 40),
                    CustomTextSignUpOrSignIn(
                      textone: "25".tr,
                      texttwo: "26".tr,
                      onTap: () {
                        controller.goToSignIn();
                      },
                    ),
                  ]),
                ),
              );
            }
          )),
    );
  }
}

// import 'package:e_commerce/Controller/auth/signup_controller.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// // import 'package:e_commerce/Core/Functions/valideInput.dart';
// import 'package:e_commerce/View/Widgets/auth/CustomButtonSign.dart';
// import 'package:e_commerce/View/Widgets/auth/customTextFormfield.dart';
// import 'package:e_commerce/View/Widgets/auth/custombuttonauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtextbodyauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtexttitleauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:e_commerce/core/functions/validinput.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SignUp extends StatelessWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // SignUpControllerImp controller =
//      Get.lazyPut(()=>SignUpControllerImp()) ;
//     return Scaffold(
//       appBar: AppBar(
//         leading: const BackButton(
//           color: AppColor.black,
//         ),
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('17'.tr,
//             style: Theme.of(context)
//                 .textTheme
//                 .headlineLarge!
//                 .copyWith(color: AppColor.grey)),
//       ),
//       body:  GetBuilder<SignUpControllerImp>(
//         builder:(controller) =>  Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                 child: Form(
//                   key: controller.SignUpControllerfs,
//                   child: ListView(children: [
//                     const SizedBox(height: 20),
//                     CustomTextTitleAuth(text: "10".tr),
//                     const SizedBox(height: 10),
//                     CustomTextBodyAuth(text: "24".tr),
//                     const SizedBox(height: 15),
//                     CustomTextFormField(
//               // key: controller.formstate,
                      
//                       // isNumber: false,

//                       val: (val) {
//                         return validInput(val!, 3, 20, "username");
//                       },
//                       controller: controller.username,
//                       hintText: "23".tr,
//                       iconData: Icons.person_outline,
//                       labelText: "20".tr,
//                       // mycontroller: ,
//                     ),
//                       const SizedBox(height: 20),
//                     CustomTextFormField(
//               // key: controller.formstate,

//                       // isNumber: false,

//                       val: (val) {
//                         return validInput(val!, 3, 40, "email");
//                       },
//                       controller: controller.email,
//                       hintText: "12".tr,
//                       iconData: Icons.email_outlined,
//                       labelText: "18".tr,
//                       // mycontroller: ,
//                     ),
//                       const SizedBox(height: 20),
//                     CustomTextFormField(
//               // key: controller.formstate,
                      
//                       // isNumber: true,
//                       val: (val) {
//                         return validInput(val!, 7, 11, "phone");
//                       },
//                       controller: controller.phone,
//                       hintText: "22".tr,
//                       iconData: Icons.phone_android_outlined,
//                       labelText: "21".tr,
//                       // mycontroller: ,
//                     ),
//                       const SizedBox(height: 20),
//                     CustomTextFormField(
//                       // isNumber: false,

//                       val: (val) {
//                         return validInput(val!, 3, 30, "password");
//                       },
//                       controller: controller.password,
//                       hintText: "13".tr,
//                       iconData: Icons.lock_outline,
//                       labelText: "19".tr,
//                       // mycontroller: ,
//                     ),
//                       const SizedBox(height: 20),
//                     CustomButtomAuth(
//                         text: "17".tr,
//                         onPressed: () {
//                           controller.signUp();
//                         }),
//                     const SizedBox(height: 40),
//                     CustomButtonSign(
//                       text1: "25".tr,
//                       text2: "26".tr,
//                       Onpressed: () {
//                         controller.goToSignIn();
//                       },
//                     ),
//                   ]),
//                 ),
//               ) ,
//         )   );
//   }
// }