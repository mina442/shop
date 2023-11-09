

import 'package:flutter/material.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({Key? key, required this.textbutton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textbutton,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:flutter/material.dart';

// class CustomLanguageBotton extends StatelessWidget {
//   final String textbutton;
//   final void Function()? onpressed;
//   const CustomLanguageBotton({super.key, required this.textbutton,required this.onpressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//                 padding: const EdgeInsets.symmetric(horizontal:100),
//                 width: double.infinity,
//                 child: MaterialButton(
//                   textColor: Colors.white,
//                   color: AppColor.primaryColor,
//                   onPressed: onpressed,
//                   child: Text(textbutton,style: const TextStyle(fontWeight: FontWeight.bold ),),
//                   ),
//                )
//  ;
//   }
// }