// internal packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:my_opal/getx/advertiseView.dart';
import 'package:my_opal/theme/splash.dart';

// import 'package:localstorage/localstorage.dart';

// screens
import 'Components/CATEGORY/category.dart';
import 'Components/INDEX/index.dart';

import 'Components/ADVERTISE/addAdvertise.dart';
import 'Components/PROFILE/profile.dart';
// import 'configs/appColors.dart';

import 'Components/PROFILE/testpage.dart';
import 'app/module/home/view/home_view.dart';
import 'get/counterBinding.dart';
import 'get/counterView.dart';
import 'getx/advertiseBinding.dart';
import 'theme/appTheme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    final opalix = box.read('splash');

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));

    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Parent()
    //   );

    return GetMaterialApp(
      title: 'جیموکس',
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,

      // initialRoute: '/',
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      // initialBinding: counterBinding(),
      initialBinding: advertiseBinding(),
      initialRoute: '/',
      routes: {
        '/Index': (context) => Index(),
        '/Category': (context) => Category(),
        '/AddAdvertise': (context) => AddAdvertise(),
        '/Profile': (context) => Profile(),
      },

      // initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Index(), transition: Transition.fade),
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
        GetPage(
            name: '/TestPage',
            page: () => TestPage(),
            transition: Transition.cupertino,
            transitionDuration: Duration(milliseconds: 200)),
      ],

      home: SafeArea(
          child: Scaffold(
        body: opalix
            ? SplashScreen()
            : Directionality(textDirection: TextDirection.rtl, child: Epix()
                // child: MyExample()
                ),
      )),
    );
  }
}

class MyExample extends StatefulWidget {
  @override
  _MyExampleState createState() => _MyExampleState();
}

class _MyExampleState extends State<MyExample> {
  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    //  MyWidget(),
    const Index(),
    Category(),
    const AddAdvertise(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: CustomLineIndicatorBottomNavbar(
          splashColor: Colors.grey,
          selectedColor: Colors.black,
          unSelectedColor: Colors.black,
          backgroundColor: Colors.white,
          unselectedIconSize: 25,
          selectedIconSize: 24,
          unselectedFontSize: 13,
          selectedFontSize: 12,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          enableLineIndicator: true,
          lineIndicatorWidth: 3,
          indicatorType: IndicatorType.Bottom,

          // gradient: LinearGradient(
          //   colors: k Gradients,
          // ),

          customBottomBarItems: [
            CustomBottomBarItems(
              label: 'خانه',
              icon: Icons.home,
            ),
            CustomBottomBarItems(
              label: 'دسته بندی',
              icon: Icons.account_box_outlined,
            ),
            CustomBottomBarItems(
                label: 'افزودن', icon: Icons.calendar_today_outlined),
            CustomBottomBarItems(
              label: 'پروفایل',
              icon: Icons.list,
            ),
          ],
        ),
      ),
    );
  }
}
