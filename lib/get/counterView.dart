import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'counterController.dart';

// class MyWidget extends GetView<counterController> {

//   MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             TextButton(onPressed: () => controller.increment(), child: Text('increment')),
//             TextButton(onPressed: () => controller.decrement(), child: Text('decrement')),
//             Obx(() => Text(controller.counter.value.toString())),
//             Obx(() => Text(controller.counter2.value.toString()))
//             ],
//         ),
//       ),
//     );
//   }
// }


// class MyWidget extends StatelessWidget {
//   final controller = Get.put(opalController());
//   MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//               SizedBox(height: 20,),
//           GetBuilder<opalController>(
//               id: '0',
//               builder: (Value) {
//                 return Column(
//                   children: [
//                     Text(Value.opal.toString()),
//                     TextButton(onPressed: () => Value.opalIncrement(), child: Text('increment')),
//                     TextButton(onPressed: () => Value.opalDecrement(), child: Text('decrement')),
//                   ],
//                 );
//               }),
//               SizedBox(height: 20,),
//           GetBuilder<opalController>(
//               id: '1',
//               builder: (Value) {
//                 return Column(
//                   children: [
//                     Text(Value.epic.toString()),
//                     TextButton(onPressed: () => Value.epicIncrement(), child: Text('increment')),
//                     TextButton(onPressed: () => Value.epicDecrement(), child: Text('decrement')),
//                   ],
//                 );
//               }),

//         ],
//       ),
//     );
//   }
// }
