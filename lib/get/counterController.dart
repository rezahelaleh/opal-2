import 'package:get/get.dart';

class counterController extends GetxController {
  var counter = RxInt(0);
  var counter2 = RxInt(100);

  void increment() {
    print('counterIncremented');
    counter.value++;
  }
  void decrement() {
    print('counter2Decremented');
    counter2.value--;
  }
}


// class opalController extends GetxController {
//   var opal = 0;
//   var epic = 100;

//   void opalIncrement() {
//     opal++;
//     print('opalIncremented');
//     update(['0']);
//   }

//   void opalDecrement() {
//     opal--;
//     print('opalDecremented');
//     update(['0']);
//   }

//   void epicIncrement() {
//     epic++;
//     print('epicIncremented');
//     update(['1']);
//   }

//   void epicDecrement() {
//     epic--;
//     print('epicDecremented');
//     update(['1']);
//   }
// }
