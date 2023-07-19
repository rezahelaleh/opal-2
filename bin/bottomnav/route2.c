import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';


class MyPages extends StatefulWidget {
  const MyPages({super.key});

  @override
  MyPagesState createState() => MyPagesState();
}

class MyPagesState extends State<MyPages> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[


              const Index(),
                    Category(),
              const AddAdvertise(),
              const Profile(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: 'Home',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: 'Home',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business,color: Colors.black,),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school,color: Colors.black,),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}










