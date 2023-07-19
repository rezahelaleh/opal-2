import 'package:flutter/material.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';

// khob

class JoyStick extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return JoyStickState();
  }
}

class JoyStickState extends State<JoyStick> {
  int _selectedPage = 0;
  final _pageOptions = [
    const Index(),
    Category(),
    const AddAdvertise(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedPage,
            onTap: (int index) {
              setState(() {
                _selectedPage = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "خانه",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "دسته بندی",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                label: "افزودن",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "پروفایل",
              ),
            ],
          ),
        ),
      )
    ;
  }
}
