import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../app.dart';
import '../CATEGORY/category.dart';
import '../INDEX/index.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
    print('hi there');
    // Get.to(const Index());
    //  Get.toNamed("/Profile");
    //  Navigator.pushNamed(context, '/Category');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text('Launch screen'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>Category() )
                // );

                // Navigator.pushNamed(context, '/Category');

                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Category(),
                //   ),
                // );

                Get.toNamed("/TestPage", parameters: {'name': 'reza'});
                // Get.toNamed("/TestPage",arguments: {'name':'mj'});

                // pushNewScreen(
                //   context,
                //   screen: Category(),
                //   withNavBar: true, // OPTIONAL VALUE. True by default.
                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,

                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
