// internal packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:bottom_navigation_view/bottom_navigation_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_opal/Components/route.dart';
import 'package:my_opal/routes/app_pages.dart';
// import 'package:localstorage/localstorage.dart';

// screens
import 'Components/CATEGORY/category.dart';
import 'Components/INDEX/index.dart';

import 'Components/ADVERTISE/addAdvertise.dart';
import 'Components/PROFILE/profile.dart';
// import 'configs/appColors.dart';

import 'Components/getRoute.dart';
import 'Components/route2.dart';
import 'Components/route3.dart';
import 'Components/route4.dart';
import 'Components/route5.dart';
import 'configs/appTheme.dart';
import 'configs/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

    return GetMaterialApp(
        title: 'جیموکس',
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        // initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,

        //   initialRoute: '/Index',
        //   routes: {
        //   '/Index': (context) => Index(),
        //   '/Category': (context) => Category(),
        //   '/AddAdvertise': (context) => AddAdvertise(),
        //   '/Profile': (context) => Profile(),
        // },

        // routes: {
        //   '/Category': (context) => Category(),
        // },

        // getPages: [
        //   GetPage(
        //     name: '/Category',
        //     page: () => Category(),
        //     transition: Transition.circularReveal,
        //   ),
        // ],
        home: Scaffold(
          body: opalix ? SplashScreen() : const HomeScreen());
        )

            // opalix ? SplashScreen() :   MyGrillApp());

            // opalix ? SplashScreen() : MyPages());

    // opalix ? SplashScreen() :   Lion());

    // opalix ? SplashScreen() :   MainLayout());

    // opalix ? SplashScreen() :   JoyStick());

    // opalix ? SplashScreen() :  const GetRoutline());

    // opalix ? SplashScreen() : const BottomNavigationBarExample());

     
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final BottomNavigationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = BottomNavigationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ThemeData themeData = Theme.of(context);
    return WillPopScope(
      onWillPop: () async {
        _controller.goBack();
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: BottomNavigationView(
            controller: _controller,
            transitionType: BottomNavigationTransitionType.fadeThrough,
            backgroundColor: HexColor("#ffffff"),
            children: [
              const Index(),
              Category(),
              const AddAdvertise(),
              const Profile(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationIndexedBuilder(
          controller: _controller,
          builder: (context, index, child) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: BottomNavigationBar(
                currentIndex: index,
                // fixedColor:HexColor("#4938FF"),
                fixedColor: HexColor("#000000"),
                landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
                onTap: (index) {
                  _controller.goTo(index);
                },
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                      label: 'خانه', icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label: 'دسته بندی', icon: Icon(Icons.category)),
                  BottomNavigationBarItem(
                      label: 'افزودن', icon: Icon(Icons.add_circle)),
                  BottomNavigationBarItem(
                      label: 'پروفایل', icon: Icon(Icons.person)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
