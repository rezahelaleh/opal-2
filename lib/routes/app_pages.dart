import 'package:get/get.dart';

import '../Components/ADVERTISE/addAdvertise.dart';
import '../Components/CATEGORY/category.dart';
import '../Components/INDEX/index.dart';
import '../Components/PROFILE/profile.dart';



// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Index;

  static final routes = [
    GetPage(
      name: _Paths.Index,
      page: () => const Index(),
    ),
    GetPage(
      name: _Paths.Category,
      page: () => Category(),
      // binding: ProfileBinding(),
    ),
  
    GetPage(
      name: _Paths.AddAdvertise,
      page: () => const AddAdvertise(),
      // binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.Profile,
      page: () => const Profile(),
      // binding: CartBinding(),
    ),
  ];
}
