

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop_app/auth/firestore_user.dart';
import 'package:shop_app/auth/sginup/Models/UserModel.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/core/services/services.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  GoogleSignInMethod();
  // signInWithFacebook();
  // signInWithEmailAndPassword();

}

class LoginControllerImp extends LoginController {
  MyServices myServices =Get.find();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth= FirebaseAuth.instance;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? username ,phone;

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async{
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
        try{
     await _auth.signInWithEmailAndPassword(email:email.text,password:password.text).then((value) => myServices.sharedPreferences.setString("step", "2"));
      Get.offNamed(AppRoute.Home);
    }catch(e){
      print('${e}');
      Get.snackbar('Error login account', '$e',colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM,);

    }
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
  
  @override
  GoogleSignInMethod()async {
  final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  GoogleSignInAuthentication googleSignInAuthentication = await googleUser!.authentication;

 final AuthCredential credential= GoogleAuthProvider.credential(
    idToken: googleSignInAuthentication.idToken,
    accessToken: googleSignInAuthentication.accessToken,
  );
 await _auth.signInWithCredential(credential).then((user) => saveUser(user));
 myServices.sharedPreferences.setString("step", "2");
   Get.offNamed(AppRoute.Home);
  }
  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      email:user.user?.email,
       name: username == null ? user.user!.displayName : username,
         phoneNumber :phone == null ? user.user?.phoneNumber:phone,
          pic:'',
           userId:user.user?.uid,)
      // userId: user.user?.uid,
      // email: user.user?.email,
      // name: name == null ? user.user.displayName : name,
      // pic: '',
      // password:user.user?.pasword
    );
  }
  // @override
  // signInWithEmailAndPassword() async{
  
  // }



//   Future<UserCredential> signInWithFacebook() async {
//   // Trigger the sign-in flow
//   final LoginResult loginResult = await FacebookAuth.instance.login();

//   // Create a credential from the access token
//   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

//   // Once signed in, return the UserCredential
//   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential).then((user) => saveUser(user);
// }
}
// import 'package:e_commerce/core/constant/routes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class LoginController extends GetxController {
//   login();
//   goToSignUp();
//   goToForgetPassword();
//   showPassword() ;
// }

// class LoginControllerImp extends LoginController {
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();

//   late TextEditingController email;
//   late TextEditingController password;

//   bool isshowpassword = true;

//   showPassword() {
//     isshowpassword = isshowpassword == true ? false : true;
//     update();
//   }

//   @override
//   login() {
//     var formdata = formstate.currentState;
//     if (formdata!.validate()) {
//       print("Valid");
//     } else {
//       print("Not Valid");
//     }
//   }


//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     super.dispose();
//   }
//   @override
//   goToSignUp() {
// // Get.offNamed(AppRoute.forgetPassword);
//     Get.offNamed(AppRoute.signUp);
//   }

//   @override
//   goToForgetPassword() {
//     Get.offNamed(AppRoute.forgetPassword);
//   }
// }

// // import 'package:e_commerce/Core/Constants/appRoutes.dart';
// // import 'package:ecommercecourse/core/constant/routes.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class LoginController extends GetxController {
//   login();
//   goToSignUp();
//   goToFogetPassword();
// }

// class LoginControllerImp extends LoginController {
//   // GlobalKey<FormState> 
//   final LoginControllerfs = GlobalKey<FormState>();
//   late TextEditingController email;
//   late TextEditingController password;

//   @override
//   login() {
//     // var formdata = formState.currentState;
//     if(LoginControllerfs.currentState!.validate()){
//       print("valid");

//     }
//     else{
//       print("not valid");
//     }
//   }

//   @override
//   goToSignUp() {
//     Get.toNamed(AppRoute.signUp);
//   }
//   @override
//   goToFogetPassword() {
//     Get.toNamed(AppRoute.forgetPassword);
//   }

//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     LoginControllerfs.currentState!.dispose();
//     password.dispose();
//     super.dispose();
//   }
  
// }