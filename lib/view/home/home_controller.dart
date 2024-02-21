
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/services/services.dart';
import 'package:shop_app/view/cart/cart.dart';
import 'package:shop_app/view/explore/explore.dart';
import 'package:shop_app/view/home/home_service.dart';
import 'package:shop_app/view/home/model/category_model.dart';
import 'package:shop_app/view/home/model/product_model.dart';
import 'package:shop_app/view/user/profile.dart';

abstract class HomeController extends GetxController{
   initialData();
   getdata();
   getCategory();
   getBestSellingProducts();
   changeSelectedValue(int selectedValue);
}
class HomeControllerImp extends HomeController{
  MyServices myServices = Get.find();

  
  String? username;
  
  String? id;
  
  // CategoryModel? categoryModel;
  
    ValueNotifier<bool> get loading => _loading;
  
  ValueNotifier<bool> _loading = ValueNotifier(false);

  
  List<CategoryModel> get categoryModel => _categoryModel;
  
  List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  
  List<ProductModel> _productModel = [];
  
  int _navigatorValue = 0 ;
  
  List<Widget> listPage = [
  
    Explore(),
  
    Cart(),
  
    Profile(),
  
  ];
  
   List bottomappbar = [
  
   BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Text('Explore'),
      ),
      label: '',
      icon: Image.asset("assets/images/Icon_Explore.png",
      fit: BoxFit.contain,width: 20,)),
//2
      BottomNavigationBarItem(
      activeIcon:Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Text('Cart')),
      label: '',
      icon: Image.asset("assets/images/Icon_Cart.png",
      fit: BoxFit.contain,width: 20,)),
//3
      BottomNavigationBarItem(
      activeIcon:Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Text('User')),
      label: '',
      icon: Image.asset("assets/images/Icon_User.png",
      fit: BoxFit.contain,width: 20,)),   ];
  get navigatorValue => _navigatorValue;


  @override
  initialData(){
   username = myServices.sharedPreferences.getString("username");
   id = myServices.sharedPreferences.getString("id");

  }
  @override
  void onInit(){
    initialData();
    getdata();
     getCategory();
    super.onInit();
  }
  
  @override
  getdata() {
 
  }
  
  @override
  getCategory()async{
      _loading.value = true;
  HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(CategoryModel.fromJson(value[i].data() as Map<dynamic, dynamic>));
        _loading.value = false;
        // print(value[i]);
      }
      update();
    } 
    );   
  
  }
  
  @override
  getBestSellingProducts() {

  }
  
  @override
  changeSelectedValue(selectedValue) {
   _navigatorValue = selectedValue;
   update();
   
  }


}
// bottem navigation bar controller 
// home controller 
// explore controller 
// 