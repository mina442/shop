
import 'package:flutter/material.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn(
      {Key? key,
      required this.textone,
      required this.texttwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(texttwo,
              style: const TextStyle(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}


// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:flutter/material.dart';

// class CustomButtonSign extends StatelessWidget {
//   final String text1;
//   final String text2;
//   final void Function() Onpressed;
  
//   const CustomButtonSign({super.key, required this.text1, required this.text2,required this.Onpressed});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(text1),
//               TextButton(onPressed: Onpressed, child: Text(text2,style: 
//                  Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.primaryColor)
//               ,)
//               )

//             ],
//           );
//   }
// }