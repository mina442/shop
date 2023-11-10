
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/sginup/controller/verifycodesignupcontroller.dart';
import 'package:shop_app/auth/widgets/customtextbodyauth.dart';
import 'package:shop_app/auth/widgets/customtexttitleauth.dart';
import 'package:shop_app/core/constant/color.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller =
        Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text: "Please Enter The Digit Code Sent To wael@gmail.com"),
          const SizedBox(height: 15),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToSuccessSignUp();
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}

// // import 'package:e_commerce/Controller/auth/verifycodesignupcontroller.dart';
// import 'package:e_commerce/Controller/succescontroller.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/View/Widgets/auth/customtextbodyauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtexttitleauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// // import 'package:e_commerce/controller/auth/successsignup_controller.dart';
// // import 'package:e_commerce/controller/auth/verifycode_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:get/get.dart';


// class VerfiySignUp extends StatelessWidget {
//   const VerfiySignUp({super.key});

//   @override
//   Widget build(BuildContext context) {
// SuccessSignUpControllerImp controller2 = Get.put(SuccessSignUpControllerImp());

//       TextStyle? createStyle(Color color) {
//         ThemeData theme = Theme.of(context);
//         return theme.textTheme.headlineLarge?.copyWith(color: color);
//     }
//    List<TextStyle?> otpTextStyles = [
//         createStyle(AppColor.accentPurpleColor),
//         createStyle(AppColor.accentYellowColor),
//         createStyle(AppColor.accentDarkGreenColor),
//         createStyle(AppColor.accentOrangeColor),
//         createStyle(AppColor.accentPinkColor),
//         createStyle(AppColor.accentPurpleColor),
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         leading: const BackButton(
//           color: AppColor.black,
//         ),
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('Vrefiy Code',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),)),
//       body: 
//       Center(child: Container(
//         padding: const EdgeInsets.symmetric(vertical:15,horizontal: 35),
//         child: ListView(
//           children: [
//             //addlogo v16
//              const SizedBox(height: 20,), 
//             const CustomTextTitleAuth(text: 'Check Code')
//             ,const SizedBox(height: 10),
//             Container(
//             margin: const EdgeInsets.symmetric(horizontal: 30),
//             child:const CustomTextBodyAuth(text:  "Please Enter The Digit Code Sent To your email",) 
//           ),
//           const SizedBox(height: 65), 
//           Center(
//             child: OtpTextField(
//               fieldWidth: 50,
//               borderRadius: BorderRadius.circular(20),
//               numberOfFields: 6,
//               borderColor:AppColor.accentPurpleColor,
//               focusedBorderColor: AppColor.accentPurpleColor,
//               styles: otpTextStyles,
//               showFieldAsBox: false,
//               borderWidth: 4.0,
//               //runs when a code is typed in
//               onCodeChanged: (String code) {
//                   //handle validation or checks here if necessary         
//               },
//               //runs when every textfield is filled 
//               onSubmit: (String verificationCode) {
//                controller2.goToPageLogin();
//               //  controller.VerfiySignUp == verificationCode; 
//               }, 
//               ),
//           ),      
 
//           const SizedBox(height: 20),  
         
//           // CustomButtomAuth(text: 'Save',onPressed: (){
//           //   controller.GotoResetPassword();
//           // },),
//           // Row(kjjl      
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     Text(),
//           //     TextButton(onPressed:, child: Text(,style: 
//           //        Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.primaryColor)
//           //     ,))

//           //   ],
//           // )
//           ],
//         )),
//         // child: Container(
//         //   child:  Text('jakjkjhsa'),
//         // ),
//       ),
//     );
 
//   }
// }