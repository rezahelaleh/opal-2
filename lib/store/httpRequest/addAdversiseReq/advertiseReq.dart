import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

import '../../model/addAdvertiseM/advertise.dart';
import '../httpConfig.dart';

Future<List<Advertise>> getAdvertise() async {
  final response = await HttpClient.dio.get('/showAdvertis');

  final List<Advertise> advertises = [];

  // if (response.data is List<dynamic>) {
  //   for (var element in (response.data as List<dynamic>)) {
  //     advertises.add(Advertise.fromJson(element));
  //   }
  // }
  (response as dynamic)
      .forEach((element) => {advertises.add(Advertise.fromJson(element))});

  print('--------------');
  print(advertises);
  print('--------------');

  return advertises;
}
