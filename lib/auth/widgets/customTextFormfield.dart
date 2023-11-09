
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   final String hintText;
//   final String labelText;
//   final IconData iconData;
//   final TextEditingController? controller;
//   final String? Function(String?)? val;


//   const CustomTextFormField({super.key, required this.hintText, required this.labelText, required this.iconData,this.controller, required this.val});

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: val,
//             controller: controller,
//             decoration: InputDecoration( 
//               hintText: hintText,
//               helperStyle: const TextStyle(fontSize: 14 ,),
//               floatingLabelBehavior: FloatingLabelBehavior.always,
//               contentPadding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 30),
//               label: Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 9),
//                 child:  Text(labelText)),
//               suffixIcon:  Icon(iconData),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(30)
//               )
//               )
//               );
//   }
// }