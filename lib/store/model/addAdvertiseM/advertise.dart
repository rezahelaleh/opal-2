// class Advertise {

//   late final String id;
//   late final String title;
//   late final String details;
//   late final bool status;
//   late final String price;
//   late final String picture;
//   late final String health;
//   late final String createdAt;
//   late final String updatedAt;
//   late final List<String> city;
//   late final List<String> userinfo;
//   late final List<String> cat;
  

//   Advertise(
//   this.id,
//   this.title,
//   this.details,
//   this.status,
//   this.price,
//   this.picture,
//   this.health,
//   this.createdAt,
//   this.updatedAt,
//   this.city,
//   this.userinfo,
//   this.cat,
//   );

//  Advertise.fromJson(Map<String,dynamic> json){
//  id=json['_id'];
//  title=json['title'];
//  details=json['details'];
//  status=json['status'];
//  price=json['price'];
//  picture=json['picture'];
//  health=json['health'];
//  createdAt=json['createdAt'];
//  updatedAt=json['updatedAt'];
// city = List.castFrom<dynamic, String>(json['city']);
// userinfo = List.castFrom<dynamic, String>(json['userinfo']);
// cat = List.castFrom<dynamic, String>(json['cat']);
//  }


// }
















class Advertise {
  int? id;
  String? name;
  String? gender;

  Advertise({this.id, this.name, this.gender});

  Advertise.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['gender'] = this.gender;
    return data;
  }
}

















// class Advertise {
//   Advertise({
//     required this.success,
//     required this.data,
//   });
//   late final bool success;
//   late final List<Data> data;
  
//   Advertise.fromJson(Map<String, dynamic> json){
//     success = json['success'];
//     data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['success'] = success;
//     _data['data'] = data.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }

// class Data {
//   Data({
//     required this.id,
//     required this.title,
//     required this.details,
//     required this.status,
//     required this.price,
//     required this.picture,
//     required this.health,
//     required this.city,
//     required this.userinfo,
//     required this.cat,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//   late final String id;
//   late final String title;
//   late final String details;
//   late final bool status;
//   late final String price;
//   late final String picture;
//   late final String health;
//   late final List<City> city;
//   late final List<Userinfo> userinfo;
//   late final List<Cat> cat;
//   late final String createdAt;
//   late final String updatedAt;
  
//   Data.fromJson(Map<String, dynamic> json){
//     id = json['_id'];
//     title = json['title'];
//     details = json['details'];
//     status = json['status'];
//     price = json['price'];
//     picture = json['picture'];
//     health = json['health'];
//     city = List.from(json['city']).map((e)=>City.fromJson(e)).toList();
//     userinfo = List.from(json['userinfo']).map((e)=>Userinfo.fromJson(e)).toList();
//     cat = List.from(json['cat']).map((e)=>Cat.fromJson(e)).toList();
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['_id'] = id;
//     _data['title'] = title;
//     _data['details'] = details;
//     _data['status'] = status;
//     _data['price'] = price;
//     _data['picture'] = picture;
//     _data['health'] = health;
//     _data['city'] = city.map((e)=>e.toJson()).toList();
//     _data['userinfo'] = userinfo.map((e)=>e.toJson()).toList();
//     _data['cat'] = cat.map((e)=>e.toJson()).toList();
//     _data['createdAt'] = createdAt;
//     _data['updatedAt'] = updatedAt;
//     return _data;
//   }
// }

// class City {
//   City({
//     required this.id,
//     required this.city,
//     required this.advertis,
//     required this.cat,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.V,
//   });
//   late final String id;
//   late final String city;
//   late final List<String> advertis;
//   late final List<dynamic> cat;
//   late final String createdAt;
//   late final String updatedAt;
//   late final int V;
  
//   City.fromJson(Map<String, dynamic> json){
//     id = json['_id'];
//     city = json['city'];
//     advertis = List.castFrom<dynamic, String>(json['advertis']);
//     cat = List.castFrom<dynamic, dynamic>(json['cat']);
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     V = json['__v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['_id'] = id;
//     _data['city'] = city;
//     _data['advertis'] = advertis;
//     _data['cat'] = cat;
//     _data['createdAt'] = createdAt;
//     _data['updatedAt'] = updatedAt;
//     _data['__v'] = V;
//     return _data;
//   }
// }

// class Userinfo {
//   Userinfo({
//     required this.id,
//     required this.fullName,
//     required this.email,
//     required this.role,
//     required this.password,
//     required this.bookmark,
//     required this.advertis,
//     required this.cd,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.V,
//   });
//   late final String id;
//   late final String fullName;
//   late final String email;
//   late final String role;
//   late final String password;
//   late final List<dynamic> bookmark;
//   late final List<String> advertis;
//   late final List<dynamic> cd;
//   late final String createdAt;
//   late final String updatedAt;
//   late final int V;
  
//   Userinfo.fromJson(Map<String, dynamic> json){
//     id = json['_id'];
//     fullName = json['fullName'];
//     email = json['email'];
//     role = json['role'];
//     password = json['password'];
//     bookmark = List.castFrom<dynamic, dynamic>(json['bookmark']);
//     advertis = List.castFrom<dynamic, String>(json['advertis']);
//     cd = List.castFrom<dynamic, dynamic>(json['cd']);
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     V = json['__v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['_id'] = id;
//     _data['fullName'] = fullName;
//     _data['email'] = email;
//     _data['role'] = role;
//     _data['password'] = password;
//     _data['bookmark'] = bookmark;
//     _data['advertis'] = advertis;
//     _data['cd'] = cd;
//     _data['createdAt'] = createdAt;
//     _data['updatedAt'] = updatedAt;
//     _data['__v'] = V;
//     return _data;
//   }
// }

// class Cat {
//   Cat({
//     required this.id,
//     required this.name,
//     required this.icon,
//     required this.advertis,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.V,
//   });
//   late final String id;
//   late final String name;
//   late final String icon;
//   late final List<String> advertis;
//   late final String createdAt;
//   late final String updatedAt;
//   late final int V;
  
//   Cat.fromJson(Map<String, dynamic> json){
//     id = json['_id'];
//     name = json['name'];
//     icon = json['icon'];
//     advertis = List.castFrom<dynamic, String>(json['advertis']);
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     V = json['__v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['_id'] = id;
//     _data['name'] = name;
//     _data['icon'] = icon;
//     _data['advertis'] = advertis;
//     _data['createdAt'] = createdAt;
//     _data['updatedAt'] = updatedAt;
//     _data['__v'] = V;
//     return _data;
//   }
// }