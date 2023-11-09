
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/auth/ForgetPassword/controller/ForgetPasswordController.dart';
import 'package:shop_app/auth/widgets/customTextFormfield.dart';
import 'package:shop_app/auth/widgets/custombuttonauth.dart';
import 'package:shop_app/auth/widgets/customtextbodyauth.dart';
import 'package:shop_app/auth/widgets/customtexttitleauth.dart';
import 'package:shop_app/core/constant/color.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "27".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(
                // please Enter Your Email Address To Recive A verification code
                text: "29".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {},
              mycontroller: controller.email,
              hinttext: "12".tr,
              iconData: Icons.email_outlined,
              labeltext: "18".tr,
              // mycontroller: ,
            ),
            CustomButtomAuth(
                text: "30".tr,
                onPressed: () {
                  controller.goToVerfiyCode();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}


// // import 'package:e_commerce/Controller/auth/ForgetPassword/ForgetPasswordController.dart';
// import 'package:e_commerce/Controller/auth/ForgetPassword/ForgetPasswordController.dart';
// // import 'package:e_commerce/Core/Constants/color.dart';
// // import 'package:e_commerce/Core/Functions/valideInput.dart';
// import 'package:e_commerce/View/Widgets/auth/customTextFormfield.dart';
// import 'package:e_commerce/View/Widgets/auth/custombuttonauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtextbodyauth.dart';
// import 'package:e_commerce/View/Widgets/auth/customtexttitleauth.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:e_commerce/core/functions/validinput.dart';
// // import 'package:e_commerce/controller/auth/forgetpassword_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ForgetPassword extends StatelessWidget {
//   const ForgetPassword({super.key});

//   @override 
//   Widget build(BuildContext context) {
//      ForgetPasswordControllerImp controller3= Get.put(ForgetPasswordControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         leading: const BackButton(
//           color: AppColor.black,
//         ),
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         title: Text('14'.tr,style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),)),
//       body: 
//       Center(child: Container(
//         padding: const EdgeInsets.symmetric(vertical:15,horizontal: 35),
//         child: Form(
//           key: controller3.ForgetPasswordControllerfs,
//           child: ListView(
//             children: [
//               //addlogo v16
//                const SizedBox(height: 20,), 
//                CustomTextTitleAuth(text: "27".tr)
//               ,const SizedBox(height: 10),
//               Container(
//               margin: const EdgeInsets.symmetric(horizontal: 30),
//               child: CustomTextBodyAuth(text: "29".tr,) 
//             ),
//             const SizedBox(height: 65), 
//             CustomTextFormField(
//               // key: controller3.formstate,

//               val: (val) {
//                 return validInput(val!, 5 , 100 , 'email');
//               },
//               controller: controller3.email,
//               hintText: '12'.tr, 
//               labelText: "18".tr, 
//               iconData: Icons.person,),
//             const SizedBox(height: 20),  
           
//             CustomButtomAuth(text: '30'.tr,onPressed: (){
//               controller3.Checkemail();
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