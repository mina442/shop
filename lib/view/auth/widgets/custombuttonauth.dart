
import 'package:flutter/material.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomAuth({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
      ),
    );
  }
}

// // import 'package:e_commerce/Core/Constants/color.dart';
// import 'package:e_commerce/core/constant/color.dart';
// import 'package:flutter/material.dart';

// class CustomButtomAuth extends StatelessWidget {
//   final String text;
//   final void Function()? onPressed;
//   const CustomButtomAuth({Key? key, required this.text, this.onPressed})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:const EdgeInsets.only(top: 10),
//       child: MaterialButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         padding:const EdgeInsets.symmetric(vertical: 13),
//         onPressed: onPressed,
//         color: AppColor.primaryColor,
//         textColor: Colors.white,
//         child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
//       ),
//     );
//   }
// }