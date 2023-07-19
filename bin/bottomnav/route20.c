import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:my_opal/configs/appColors.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';


class Example23 extends StatefulWidget {
  @override
  _Example23State createState() => _Example23State();
}

class _Example23State extends State<Example23> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
 
  static final List<Widget> _widgetOptions = <Widget>[
    const Index(),
    Category(),
    const AddAdvertise(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              
              activeColor: Colors.white,
              // tabActiveBorder:Border.all(
              //       width: 2,
              //       color: Colors.black,
              //     ),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              // tabBackgroundColor: Colors.grey[100]!,
              tabBackgroundColor: Colors.black,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  
                  // border: Border.all(
                  //   width: 2,
                  //   color: Colors.black,
                  // ),
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                  
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
