import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getxbottombar/getxbottombar.dart';

import '../routes/app_pages.dart';


// good presist


class GetRoutline extends StatelessWidget {
  const GetRoutline({super.key});

  @override
  Widget build(BuildContext context) {
    return GetxBottomBarView(
      getPages: AppPages.routes,
      routes: [
        Routes.Index,
        Routes.Category,
        Routes.AddAdvertise,
        Routes.Profile
      ],
      defaultTransition: Transition.cupertino,
      backgroundColor: Colors.grey.shade100,
      bottomBar: <GetBottomBarItem>[
        GetBottomBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Colors.yellow),
        GetBottomBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Colors.red),
        GetBottomBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text('Cart'),
            activeColor: Colors.green),
        GetBottomBarItem(
            icon: Icon(Icons.person),
            title: Text('User'),
            activeColor: Colors.blue)
      ],
    );
  }
}
