
import 'package:get/get.dart';
import 'package:shop_app/auth/sginup/controller/signup_controller.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
  }
  

}