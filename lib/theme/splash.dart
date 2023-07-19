// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:localstorage/localstorage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../app.dart';

class SplashScreen extends StatelessWidget {
  // final Color kDarkBlueColor = const Color(0xff6c63ff);
  final Color kDarkBlueColor = HexColor("#4938FF");

  final box = GetStorage();

// LocalStorage localStorage =  LocalStorage as LocalStorage;

  @override
  Widget build(BuildContext context) {
    // final opalix = box.read('splash');
    // final opatix = localStorage.getItem('splash');

    void change() {
      box.write('splash', false);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyExample()));
      // Get.to( MyRop());
    }

    return OnBoardingSlider(
      finishButtonText: 'شروع',
      onFinish: () async {
        change();
      },
      // finishButtonColor: kDarkBlueColor,
      skipTextButton: Text(
        'فهمیدم',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'ورود',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => LoginPage(),
        //   ),
        // );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.network(
          'https://s6.uupload.ir/files/17b1aa5782b938fdd2ed813553c85233_(1)_iseu.jpg',
          height: 400,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://s6.uupload.ir/files/029349b8987ab7f87b131f402945f9e4_kwmy.jpg',
          height: 400,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://s6.uupload.ir/files/55581a18151a405b8d2bea0792b02643_4r49.jpg',
          height: 400,
          fit: BoxFit.cover,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 450,
              ),
              Text(
                'مدیریت یکپارچه',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'بهترین برنامه ریزی',
                // opalix?opalix.toString():'success',
                // 'gggggggg',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 450,
              ),
              Text(
                'چی بهتر از این',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'بدن خود را با ما شکل دهید',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                height: 450,
              ),
              // Text(
              //   'شروع میکنم',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: kDarkBlueColor,
              //     fontSize: 24.0,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              //  const Text(
              //   'با هم میتونیم',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Colors.black26,
              //     fontSize: 18.0,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // TextButton(

              //   onPressed: () => {
              //     change()

              //   },
              //   child: Text('تغییر'),

              // ),
            ],
          ),
        ),
      ],
    );
  }
}
