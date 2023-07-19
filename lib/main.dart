import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:localstorage/localstorage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_opal/getx/advertiseView.dart';
import 'Components/INDEX/Hero.dart';

import 'app.dart';
import 'get/counterView.dart';

Future<void> main() async {
  await GetStorage.init();

  final box = GetStorage();
  // box.remove('splash');
  final opatan = box.read('splash');
  if (opatan == null) {
    box.write('splash', true);
  }
  // box.write('splash', true);

  // List items  = [
  //   BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.home,
  //       color: Colors.black,
  //     ),
  //     label: 'Home',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.home,
  //       color: Colors.black,
  //     ),
  //     label: 'Home',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.business,
  //       color: Colors.black,
  //     ),
  //     label: 'Business',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(
  //       Icons.school,
  //       color: Colors.black,
  //     ),
  //     label: 'School',
  //   ),
  // ];

  runApp(const MyApp());
  // runApp(const Epix());
  // runApp( MyWidget());

  // runApp(GetMaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: MyExample(),
  //       // body: LHero(),
  //     )));

  // runApp(MyExample());
  // runApp(Notela());
  // runApp(MyToy());
}
