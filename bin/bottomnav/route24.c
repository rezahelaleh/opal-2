import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';



class MyOpalix extends StatefulWidget {
  static final title = 'salomon';

  @override
  _MyOpalixState createState() => _MyOpalixState();
}

class _MyOpalixState extends State<MyOpalix> {
  var _currentIndex = 0;

    static List<Widget> _widgetOptions = <Widget>[
    const Index(),
    Category(),
    const AddAdvertise(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
          GetPage(name: '/', page: () => Index(), transition: Transition.zoom),
          GetPage(
              name: '/Category',
              page: () => Category(),
              transition: Transition.zoom),
          GetPage(
              name: '/add_circle',
              page: () => AddAdvertise(),
              transition: Transition.zoom),
          GetPage(
              name: '/person',
              page: () => Profile(),
              transition: Transition.zoom),
        ],
      debugShowCheckedModeBanner: false,
      title: MyOpalix.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(

         body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
        
       
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}