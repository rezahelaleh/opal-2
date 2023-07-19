import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MySue extends StatelessWidget {
  const MySue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySue2(),
    );
  }
}

class MySue2 extends StatelessWidget {
  const MySue2({Key? key}) : super(key: key);

  void openBottomSheet() {
    Get.bottomSheet(
      Column(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Bottom Sheet',
              style: TextStyle(fontSize: 18),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Close'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bottom sheet example'),
            OutlinedButton(
              onPressed: openBottomSheet,
              child: const Text('Open'),
            )
          ],
        ),
      ),
    );
  }
}