import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'advertiseController.dart';

class Epix extends GetView<advertiseController> {
  const Epix({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(controller.advertiseList.toString()),
          TextButton(
              onPressed: () => controller.fetchAdvertis(),
              child: Text('increment')),
        ],
      ),
    );
  }
}
