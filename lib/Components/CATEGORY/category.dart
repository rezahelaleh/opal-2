import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Category extends StatefulWidget {

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  // @override
  // void initState() {
  //   super.initState();
  //   print('hi there');
  //   // Get.to(const Index());
  // Get.toNamed("/Profile");


  
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
            primary: false,
            physics: AlwaysScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            // scrollDirection: axisDirectionToAxis(AxisDirection.right),
            addAutomaticKeepAlives: true,
            padding: const EdgeInsets.all(20.0),
            crossAxisCount: 3,
            children: List<Widget>.generate(
              30,
              (index) {
                return GridTile(
                  child: Card(
                    color:
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(1.0),
                  ),
                );
              },
            )));
  }
}