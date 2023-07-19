import 'dart:convert';

import 'package:get/get.dart';

import '../store/httpRequest/httpConfig.dart';
import 'advertiseModel.dart';

class advertiseController extends GetxController {
  RxList advertiseList = <AdvertiseModel>[].obs;

  // var advertiseList = RxList([]);

  void fetchAdvertis() async {
    final response = await HttpClient.dio.get('/showAdvertis');


    for (var item in response.data) {
      advertiseList.add(AdvertiseModel.fromJson(item));
    }

    // print(response);

    // print(response.data);
    // final Map map = Map.from(response.data);
    // print(map);

    // advertiseQ.add(response.data);

    // if (response.data is List<dynamic>) {
    // as List<dynamic>

    // for (var element in (  response.data )) {
    // advertiseList.add(AdvertiseModel.fromJson(element));
    // advertiseList.assignAll(AdvertiseModel.fromJson(element) as Iterable);
    // print(advertiseQ);
    // }

    // print('true condition');
    // print(advertiseQ);

    // (response as dynamic)
    //     .forEach((element) => {advertiseList.add(AdvertiseModel.fromJson(element))});

    // } else {
    //   print('else condition');
    //   print(advertiseQ.runtimeType);
    //   print(advertiseQ);
    // }

    // print(advertiseQ);
    // (response as dynamic).forEach((element) => {advertiseQ.add(Advertise.fromJson(element))});
  }
}
