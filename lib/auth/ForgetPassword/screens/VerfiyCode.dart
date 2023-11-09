
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/ForgetPassword/controller/VerfiyPasswordController.dart';
import 'package:shop_app/auth/widgets/customtextbodyauth.dart';
import 'package:shop_app/auth/widgets/customtexttitleauth.dart';
import 'package:shop_app/core/constant/color.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =
        Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter The Digit Code Sent To wael@gmail.com"),
          const SizedBox(height: 15),
            OtpTextField(
              
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor:const  Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                     controller.goToResetPassword() ; 
                }, // end onSubmit
              ), 
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}

// // import 'package:e_commerce/Controller/auth/ForgetPassword/VerfiyPasswordController.dart';
// import 'package:e_commerce/Controller/auth/ForgetPassword/VerfiyPasswordController.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/View/Widgets/auth/customtextbodyauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtexttitleauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// // import 'package:e_commerce/controller/auth/verifycode_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:get/get.dart';


// class VerfiyCode extends StatelessWidget {
//   const VerfiyCode({super.key});

//   @override
//   Widget build(BuildContext context) {
// VerfiyCodeControllerImp controller7 = Get.put(VerfiyCodeControllerImp());

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
//                controller7.GotoResetPassword();
//               //  controller.verfiyCode == verificationCode; 
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