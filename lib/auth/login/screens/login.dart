
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/login/controller/login_controller.dart';
import 'package:shop_app/auth/widgets/CustomButtonSign.dart';
import 'package:shop_app/auth/widgets/customTextFormfield.dart';
import 'package:shop_app/auth/widgets/custombuttonauth.dart';
import 'package:shop_app/auth/widgets/customtextbodyauth.dart';
import 'package:shop_app/auth/widgets/customtexttitleauth.dart';
import 'package:shop_app/auth/widgets/logoauth.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/constant/imgaeasset.dart';
import 'package:shop_app/core/functions/alertexitapp.dart';
import 'package:shop_app/core/functions/validinput.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const LogoAuth(),
                const SizedBox(height: 20),
                CustomTextTitleAuth(text: "10".tr),
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "11".tr),
                const SizedBox(height: 15),
                CustomTextFormAuth(
                  isNumber: false,

                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "18".tr,
                  // mycontroller: ,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
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
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "14".tr,
                    textAlign: TextAlign.right,
                  ),
                ),
                CustomButtomAuth(
                    text: "15".tr,
                    onPressed: () {
                      controller.login();
                    }),
                // const SizedBox(height: 40),
                // InkWell(onTap: () {  },
                // child: Row(
                //   children: [
                //     Image.asset(AppImageAsset.Google)
                //   ],
                // )),
                // InkWell(onTap: () {  },
                // child: Row(
                //   children: [
                //     Image.asset(AppImageAsset.facebook)
                //   ],
                // )),
                const SizedBox(height: 40),
                CustomTextSignUpOrSignIn(
                  textone: "16".tr,
                  texttwo: "17".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),

              ]),
            ),
          )),
    );
  }
}

// import 'package:e_commerce/Controller/auth/login_controller.dart';
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

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//    LoginControllerImp controller= Get.put(LoginControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('9'.tr,style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),)),
//       body: 
//       Center(child: Container(
//         padding: const EdgeInsets.symmetric(vertical:15,horizontal: 35),
//         child: Form(
//           key: controller.LoginControllerfs,
//           child: ListView(
//             children: [
//               //addlogo v16
//                const SizedBox(height: 20,), 
//                CustomTextTitleAuth(text: '10'.tr)
//               ,const SizedBox(height: 10),
//               Container(
//               margin: const EdgeInsets.symmetric(horizontal: 30),
//               child: CustomTextBodyAuth(text: '11'.tr,) 
//               // Text(
                
//               //   textAlign: TextAlign.center,
//               //   style: Theme.of(context).textTheme.bodyLarge,
//               // ),
//             ),
//             const SizedBox(height: 65), 
//             CustomTextFormField(
//               // key: controller.LoginControllerfs,
              
//               val: (val) {
//                 return validInput(val!, 5 , 100, 'email');
//               },
//               controller: controller.email,
//               hintText: '12'.tr,
//               labelText: "18".tr, 
//               iconData: 
//               Icons.email_outlined,),
//             const SizedBox(height: 20),  
//             CustomTextFormField(
//               // key: controller.formstate,
//               val: (val) {
//                 return validInput(val!, 5 , 100, 'password');
//               },
//               controller: controller.password,
//               hintText: '13'.tr, 
//               labelText: "19".tr, 
//               iconData: Icons.lock_clock_outlined,),
//             const SizedBox(height: 20,),
//             TextButton(onPressed:(){
//               controller.goToFogetPassword();
//             }, child:  Text('14'.tr))
//            ,const SizedBox(height: 20,),
//             CustomButtomAuth(text: '15'.tr,onPressed: (){
//                   controller.login();
//             },),
//             const SizedBox(height: 20,),
//             CustomButtonSign(text1: '16'.tr, text2: '17'.tr, Onpressed:(){controller.goToSignUp();},)
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