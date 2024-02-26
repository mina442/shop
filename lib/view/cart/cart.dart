// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shop_app/view/auth/widgets/customtext2.dart';

class Cart extends StatelessWidget {
 const Cart({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  List <String>  names = <String>[
    'p',
    'p',
    'p',
    'p',
  ];
  List <String>  images = <String>[
    "assets/images/Icon_Explore.png",
    "assets/images/Icon_Explore.png",
    "assets/images/Icon_Explore.png",
    "assets/images/Icon_Explore.png",
  ];
  List <int>  prices = <int>[
    111,
    222,
    333,
    444,
  ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) {
                return Container(
                  height: 140,
          child: Row(
            children: [
              Image.asset(images[index],fit: BoxFit.fill,),
              Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText2(text: names[index],fontSize: 24,),
                SizedBox(width: 10,),
                CustomText2(text: "\$ ${prices[index].toString()}",),
                SizedBox(width: 20,),
                Container(
                  width: 120,
                  height: 40,
                  color: Colors.grey.shade200,
                  child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,color: Colors.black,
                      ),
                      SizedBox(width: 20 ,),
                      CustomText2(
                        alignment: Alignment.center ,
                        text: '1',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                       SizedBox(width: 20 ,),
                       Container(
                        padding: EdgeInsets.only(bottom:20),
                         child: Icon(
                          Icons.minimize,color: Colors.black,
                                       ),
                       ),
          
                     
                    ],
                  ),
                )
                ]
                ),
              ),
              
            ],
              )
          );
                      },
              itemCount: names.length,
               separatorBuilder: (BuildContext context, int index) { 
                return SizedBox(height: 10);
               },
            ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:30.0,left: 30),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround ,
              children: [
                Column(
                  children: [
                    CustomText2(text: "Total",fontSize: 22,color:Colors.grey,),
                    CustomText2(text: "\$2000",fontSize: 18,color:Colors.green,),
                    
          
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 100,
                  width: 150,
                  child: MaterialButton(onPressed: (){},child: Text('Checkout'),color: Colors.green[400],),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
