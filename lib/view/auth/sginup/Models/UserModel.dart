
 class UserModel {
   String? userId;
   String? email;
   String? name;
  //  String? password;
   String? phoneNumber;
   String? pic;


  UserModel({this.email,
   this.name,
  //  this.password,
   this.phoneNumber,
   this.pic,
   this.userId,}
  );
  UserModel.fromJson(Map<dynamic,dynamic>map){
    if (map == null) return;
    userId = map['userId'];
    email = map['email'];
    name = map['name'];
    // password = map['password'];
    phoneNumber = map['phoneNumber'];
    pic = map['pic'];

  }
  
   toJson() {
    
    return {
     'userId':userId,
     'email':email,
     'name':name,
    //  'password':password,
     'phoneNumber':phoneNumber,
     'pic':pic,
    };
  }
}
// // ignore_for_file: public_member_api_docs, sort_constructors_first




// class onBoardingModel {
//   final String? title;
//   final String? image;
//   final String? body;
//   onBoardingModel({
//     this.title,
//     this.image,
//     this.body,
//   });

// } 
