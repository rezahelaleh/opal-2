// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../httpRequest/addAdversiseReq/advertiseReq.dart';
import '../../httpRequest/httpConfig.dart';
import '../../model/addAdvertiseM/advertise.dart';

import 'dart:convert';

class addController extends GetxController {
  static addController get to => Get.find();

  // int counter = 0;
  RxString counter = 'opal'.obs;
  RxInt likes = 100.obs;
  RxList advertiseQ = [].obs;

  void increment() {
    // counter++;
    // update();
    counter.value = counter.value.toUpperCase();
  }

  addLike() {
    likes.value = likes.value + 1;
  }

  // Future<List<Advertise>> getAdvertise() async {

  //   final response = await HttpClient.dio.get('/showAdvertis');

  //   print(response.data);

  //   final List<Advertise> advertises = [];

  //   if (response.data is List<dynamic>) {
  //     for (var element in (response.data as List<dynamic>)) {
  //       advertises.add(Advertise.fromJson(element));
  //     }
  //   }
  //   return advertises;
  // }

Future fetchAdvertis() async {
    final response = await HttpClient.dio.get('/showAdvertis');

    // print(response.data);
    // final Map map = Map.from(response.data);
    // print(map);

    // advertiseQ.add(response.data);

    // if (response.data is List<dynamic>) {
// as List<dynamic>
    for (var element in ( response.data )) {
      advertiseQ.add(Advertise.fromJson(element));
      // advertiseQ.assignAll(Advertise.fromJson(element) as Iterable);
      // print(advertiseQ);
    }
    // print('true condition');
    // print(advertiseQ);

    // (response as dynamic)
    //     .forEach((element) => {advertiseQ.add(Advertise.fromJson(element))});

    // } else {
    //   print('else condition');
    //   print(advertiseQ.runtimeType);
    //   print(advertiseQ);
    // }

    // print(advertiseQ);
    // (response as dynamic).forEach((element) => {advertiseQ.add(Advertise.fromJson(element))});
  }
}






// Future<List<Advertise>> getAdvertise() async {
//   final response = await HttpClient.dio.get('/showAdvertis');

//   final List<Advertise> advertises = [];



  // if (response.data is List<dynamic>) {
  //   for (var element in (response.data as List<dynamic>)) {
  //     advertises.add(Advertise.fromJson(element));
  //   }
  // }



//   (response as dynamic)
//       .forEach((element) => {advertises.add(Advertise.fromJson(element))});

//   print('--------------');
//   print(advertises);
//   print('--------------');

//   return advertises;
// }
