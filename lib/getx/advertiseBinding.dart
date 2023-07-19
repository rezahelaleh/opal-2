import 'package:get/get.dart';

import './advertiseController.dart';

class advertiseBinding implements Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => advertiseController());
      // Get.lazyPut(() => opalController());
  }
  
}