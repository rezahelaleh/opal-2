import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';


// ///////zesht

class Pages extends StatefulWidget {
  @override
  createState() => PagesState();
}

class PagesState extends State<Pages> 
{
  int pageIndex = 0;

  Widget pageChooser() {
    switch (this.pageIndex) {
      case 0:
        return const Index();
        break;

      case 1:
        return Category();
        break;

      case 2:
        return const AddAdvertise();
        break;
      case 3:
        return const Profile();
        break;

      default:
        return Container(
          child: Center(
              child: Text('No page found by page chooser.',
                  style: TextStyle(fontSize: 30.0))),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return GetMaterialApp(
        initialRoute: '/',
        routes: {
          '/Index': (context) => Index(),
          '/Category': (context) => Category(),
          '/AddAdvertise': (context) => AddAdvertise(),
          '/Profile': (context) => Profile(),
        },




  //  getPages: [
  //   GetPage(name: '/', page: () => Index(), transition: Transition.zoom),
  //   GetPage(
  //       name: '/Category',
  //       page: () => Category(),
  //       transition: Transition.zoom),
  //   GetPage(
  //       name: '/add_circle',
  //       page: () => AddAdvertise(),
  //       transition: Transition.zoom),
  //   GetPage(
  //       name: '/person',
  //       page: () => Profile(),
  //       transition: Transition.zoom),
  // ],



        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: IndexedStack(index: _currentIndex, children: [pageChooser()]),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: pageIndex,
              onTap: (int tappedIndex) {
                //Toggle pageChooser and rebuild state with the index that was tapped in bottom navbar
                setState(() {
                  pageIndex = tappedIndex;
                });
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(
                      Icons.account_box,
                      color: Colors.black,
                    )),
                BottomNavigationBarItem(
                    label: 'Plan',
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    )),
                BottomNavigationBarItem(
                    label: 'Startup',
                    icon: Icon(
                      Icons.alarm_on,
                      color: Colors.black,
                    )),
                BottomNavigationBarItem(
                    label: 'Startup',
                    icon: Icon(
                      Icons.alarm_on,
                      color: Colors.black,
                    )),
              ],
            )));
  }
}
