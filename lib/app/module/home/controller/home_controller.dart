import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../store/model/addAdvertiseM/advertise.dart';
import '../../../data/network/api/advertise_api.dart';
import '../../../data/network/service/api_exception.dart';

class HomeController extends GetxController with StateMixin<List<Advertise>> {
  final UserApi _userApi = UserApi();

  RxList<Advertise> users = <Advertise>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    try {
      final response = await _userApi.getUsers();
      if (response.statusCode == 200) {
        final userModel = Advertise.fromJson(response.data);
        // if (userModel) {
          users.assignAll(userModel as Iterable<Advertise>);
          // change(users, status: RxStatus.success());
        // } else {
        //   change(null, status: RxStatus.error('No user found'));
        // }
      }
    } on DioError catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      change(null, status: RxStatus.error(apiException.toString()));
    }
  }

  // void addUser({Map<String, dynamic>? data}) async {
  //   try {
  //     final response = await _userApi.postUser(data: data);
  //     if (response.statusCode == 200) {
  //       fetchUsers();
  //     }
  //   } on DioError catch (e) {
  //     final ApiException apiException = ApiException.fromDioError(e);
  //     throw apiException;
  //   }
  // }

  // void updateUser(String id, {Map<String, dynamic>? data}) async {
  //   try {
  //     final response = await _userApi.putUser(id, data: data);
  //     if (response.statusCode == 200) {
  //       fetchUsers();
  //     }
  //   } on DioError catch (e) {
  //     final ApiException apiException = ApiException.fromDioError(e);
  //     throw apiException;
  //   }
  // }

  // void deleteUser(String id) async {
  //   try {
  //     final response = await _userApi.deleteUser(id);
  //     if (response.statusCode == 200) {
  //       fetchUsers();
  //     }
  //   } on DioError catch (e) {
  //     final ApiException apiException = ApiException.fromDioError(e);
  //     throw apiException;
  //   }
  // }



}




