
// import 'package:e_commerce/core/constant/routes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
// }

// class SignUpControllerImp extends SignUpController {
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();

//   late TextEditingController username;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;

//   @override
//   signUp() {
//     if (formstate.currentState!.validate()) {
//       Get.offNamed(AppRoute.verfiyCodeSignUp);
//     } else {}
//   }

//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }

//   @override
//   void onInit() {
//     username = TextEditingController();
//     phone = TextEditingController();
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     email.dispose();
//     phone.dispose();
//     password.dispose();
//     super.dispose();
//   }
// }
// import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:e_commerce/Controller/auth/login_controller.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop_app/view/auth/firestore_user.dart';
import 'package:shop_app/view/auth/sginup/Models/UserModel.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/core/services/services.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  MyServices myServices =Get.find();
  
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController repassword;
  FirebaseAuth _auth= FirebaseAuth.instance;
 


  bool isshowpassword = true;
// Crud _crud = Crud();
  @override
  signUp() async{
    if (formstate.currentState!.validate()) {
 try{
     await _auth.createUserWithEmailAndPassword(email:email.text,password:password.text).
     then((user)async {
        saveUser(user);
      });
    //  myServices.sharedPreferences.setString("step", "2");
     
       Get.offNamed(AppRoute.verfiyCodeSignUp);
    }catch(e){
      print('${e}');
      Get.snackbar('Error login account', '$e',colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM,);

    }
     
//    var response =   await _crud.postRequest(linkSignup, {
// "username" : username.text,
// "email" : email.text,
// "password" : password.text,

//       });
      // if(response['status']=="success"){
        // Get.offAllNamed(AppRoute.Home);
      }else{
        print('signup fail');
      }
      // 1111111112121212121212121212121
      // Get.delete<LoginControllerImp>();

      // Get.delete<ForgetPasswordControllerImp>();

    // } else {
    //   print("Not Valid");
    // }
  }
 void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      email:user.user?.email,
       name: username.text == null ? user.user!.displayName : username.text,
         phoneNumber :phone.text == null ? user.user?.phoneNumber:phone.text,
          pic:'',
           userId:user.user?.uid,)
      // userId: user.user?.uid,
      // email: user.user?.email,
      // name: name == null ? user.user.displayName : name,
      // pic: '',
      // password:user.user?.pasword
    );
  }
  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    repassword.dispose();

    super.dispose();
  }
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
bool isshowrepassword = true;

  showrePassword() {
    isshowrepassword = isshowrepassword == true ? false : true;
    update();
  }
}

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';

// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
// }

// class SignUpControllerImp extends SignUpController {
//   // GlobalKey<FormState> 
// final  SignUpControllerfs = GlobalKey<FormState>();

//   late TextEditingController username;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;

//   @override
//   signUp() {
//     //  var formdata = formState.currentState;
//     if(SignUpControllerfs.currentState!.validate()){
//       print("valid");
//         Get.offNamed(AppRoute.verfiyCodeSignUp);
//         // Get.delete<SignUpControllerImp>();
//     // Get.offNamed(AppRoute.CheckEmail);
//     // goToSignIn();

//     }
//     else{
//       print("not valid");
//     }
//   }

//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }

//   @override
//   void onInit() {
//     username = TextEditingController() ; 
//     phone = TextEditingController() ; 
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     email.dispose();
//     phone.dispose();
//     password.dispose();
//     SignUpControllerfs.currentState!.dispose();
//     super.dispose();
//   }
// }