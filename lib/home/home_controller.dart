
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/services/services.dart';
import 'package:shop_app/home/home_service.dart';
import 'package:shop_app/home/model/category_model.dart';
import 'package:shop_app/home/model/product_model.dart';

class HomeViewModel extends GetxController {
  MyServices myServices =Get.find();
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  List<ProductModel> _productModel = [];

  HomeViewModel() {
    getCategory();
    getBestSellingProducts();
  }

  getCategory() async {
    _loading.value = true;
    HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(CategoryModel.fromJson(value[i].data()as Map<dynamic, dynamic>));
        _loading.value = false;
      }
      update();
    });
  }

  getBestSellingProducts() async {
    _loading.value = true;
    HomeService().getBestSelling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(ProductModel.fromJson(value[i].data() as Map<dynamic, dynamic>));
        _loading.value = false;
      }
      print(_productModel.length);
      update();
    });
  }
}
