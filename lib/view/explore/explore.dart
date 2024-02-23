import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shop_app/view/auth/widgets/customtext2.dart';
import 'package:shop_app/view/home/details_view.dart';
import 'package:shop_app/view/home/home_controller.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) =>
        controller.loading.value? 
        Center(child: CircularProgressIndicator()):
        Scaffold(body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Column(
                    children: [
                      _searchTextFormField(),
                      SizedBox(
                        height: 30,
                      ),
                      CustomText2(
                        text: "Categories",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _listViewCategory(),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText2(
                            text: "Best Selling",
                            fontSize: 18,
                          ),
                          CustomText2(
                            text: "See all",
                            fontSize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _listViewProducts(),
                    ],
                  ),
                ),
              )
    ))
    ;
  }
   Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _listViewCategory() {
    return 
    GetBuilder<HomeControllerImp>(
      builder: (controller) => 
      Container(
        height: 100,
        child: ListView.separated(
          itemCount: 
          controller.categoryModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100,
                  ),
                  height: 60,
                  width: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // child: Image.asset("facebook.png")
                    child:
                    //  Text('facebook'),
                    Image.network(controller.categoryModel[index].image!),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText2(
                  text: 
                  // 'hello'
                  controller.categoryModel[index].name!,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
    
    ));
  }

  Widget _listViewProducts() {
    return 
    GetBuilder<HomeControllerImp>(
      builder: (controller) =>
       Container(
        height: 350,
        child: ListView.separated(
          itemCount:controller.productModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(DetailsView(
                  model: 
                  controller.productModel[index],
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade100,
                      ),
                      child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width * .4,
                        //  child: 
                        //  Text('chaire'),
                          child: 
                          // Image.asset("chaire.png")
                          Image.network(
                            controller.productModel[index].image!,
                            
                            fit: BoxFit.fill,
                          )
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText2(
                      text: 
                      // 'kbbbbb',
                      controller.productModel[index].name!,
                      alignment: Alignment.bottomLeft,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: CustomText2(
                        text:
                        //  'okmijn',
                        controller.productModel[index].description!, 
                        color: Colors.grey,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText2(
                      text: 
                      // "uhbthn",
                      controller.productModel[index].price.toString() +
                          " \$",
                      color: Colors.green,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
    ));
  }
  
}