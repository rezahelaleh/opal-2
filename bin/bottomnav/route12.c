import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';


// siah sefid



class MyRop extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyRopState createState() => _MyRopState();
}

class _MyRopState extends State<MyRop> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget pageChooser() {
      switch (this._index) {
        
        case 0:
          return const Index();

        case 1:
          return Category();

        case 2:
          return const AddAdvertise();

        case 3:
          return const Profile();

        default:
          return Container(
            child: Center(
                child: Text('No page found by page chooser.',
                    style: TextStyle(fontSize: 30.0))),
          );
      }
    }

    return Scaffold(
      //If you want to show body behind the navbar, it should be true
      extendBody: true,

      body: Center(child: pageChooser()),

      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}
