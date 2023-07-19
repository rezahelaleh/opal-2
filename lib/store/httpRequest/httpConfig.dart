import 'package:dio/dio.dart';
const String baseUrl = 'http://192.168.0.104:6565/api';

class HttpClient {
  static Dio dio = Dio(BaseOptions(
    baseUrl: baseUrl,
  ));
}