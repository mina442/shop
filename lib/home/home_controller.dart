

import 'package:get/get.dart';
import 'package:shop_app/core/services/services.dart';

abstract class HomeController extends GetxController{
   initialData();
   getdata();
}
class HomeControllerImp extends HomeController{
  MyServices myServices = Get.find();
  String? username;
  String? id;
  @override
  initialData(){
   username = myServices.sharedPreferences.getString("username");
   id = myServices.sharedPreferences.getString("id");

  }
  @override
  void onInit(){
    initialData();
    getdata();
    super.onInit();
  }
  
  @override
  getdata() {
 
  }

}