import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    // print(Get.parameters['name']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
var getParams = Get.parameters['name'] ?? '';
    // dynamic getArguments = Get.arguments['name'] ?? '';

    return Text(
      // Get.arguments['name'].toString(),
       getParams,
      style: const TextStyle(fontSize: 40),
    );
  }
}
