import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/routes.dart';
import 'package:shop_app/view/auth/widgets/customtext2.dart';
import 'package:shop_app/view/home/details_view.dart';
import 'package:shop_app/view/home/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key,names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
  final List<String> names = <String>[
    'men',
    's',
    's',
    's',
    's',
    's',
    's',
  ];
    return GetBuilder<HomeControllerImp>(
      builder: (controller) =>
                controller.loading.value
           ? Scaffold(
              body: Center(child: CircularProgressIndicator())):
                   Scaffold(
              body: controller.listPage.elementAt(controller.navigatorValue),
               bottomNavigationBar: bottomNavigationBar(),
             )
             );
   
  }

 Widget bottomNavigationBar(){
    return 
    GetBuilder<HomeControllerImp>(
      builder: (controller) =>BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      currentIndex: controller.navigatorValue,
      onTap: (index) {
        controller.changeSelectedValue(index);
        // if(index == 0)Get.toNamed(AppRoute.Home);
        // if(index == 1)Get.toNamed(AppRoute.Cart);
        // if(index == 2)Get.toNamed(AppRoute.Profile);

      },
      items: [
        //1
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
      fit: BoxFit.contain,width: 20,)),

    ],
    
    ));
  }
}
