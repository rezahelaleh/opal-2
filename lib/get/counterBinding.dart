import 'package:get/get.dart';

import 'counterController.dart';

class counterBinding implements Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => counterController());
      // Get.lazyPut(() => opalController());
  }
  
}