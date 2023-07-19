import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../app.dart';
import '../../store/controller/addAdvertiseC/adController.dart';
import '../CATEGORY/category.dart';
import '../INDEX/index.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final addController c = Get.put(addController());

  @override
  void initState() {
    super.initState();

    // print('hi there');
    // c.fetchAdvertis();
    c.addLike();

    // print('first');
    // print(c.advertiseQ.value);
    // print('second');

    // Get.to(const Index());
    //  Get.toNamed("/Profile");
    //  Navigator.pushNamed(context, '/Category');
  }

  // Widget getTextWidgets(List<String> strings)
  // {
  //   return new Row(children: strings.map((item) => new Text(item)).toList());
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final addController c = Get.put(addController());

    return Container(
      margin: const EdgeInsets.only(top: 0),
      child: Column(children: [
        // FutureBuilder<String>(
        //   future: c.fetchAdvertis(), // function where you call your api
        //   builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        //     // AsyncSnapshot<Your object type>
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return Center(child: Text('Please wait its loading...'));
        //     } else {
        //       if (snapshot.hasError)
        //         return Center(child: Text('Error: ${snapshot.error}'));
        //       else
        //         return Center(
        //             child: new Text(
        //                 '${snapshot.data}')); // snapshot.data  :- get your object which is pass from your downloadData() function
        //     }
        //   },
        // ),

        // Container(
        //   margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
        //   child: const Align(
        //     alignment: AlignmentDirectional.centerStart,
        //     child: Text('اوپال من',
        //         style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        //   ),
        // ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                width: 120,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  // border: Border.all(
                  //   width: 2,
                  //   color: HexColor("#000000"),
                  // ),
                  color: HexColor('#e8f1f2'),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(17),
                  child: Column(
                    children: [
                      Text('رضا هلاله'),
                      Text('09165971736'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(2, 0, 2, 3),
                width: 120,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  // border: Border.all(
                  //   width: 2,
                  //   color: HexColor("#000000"),
                  // ),
                  color: HexColor('#e8f1f2'),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Column(
                    children: [
                      Text('رضا هلاله'),
                      Text('09165971736'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        // Obx(() => Text("advertise: ${c.advertiseQ}")),

        Obx(() => Text("Clicks: ${c.counter.value}")),

        Obx(() => Text("Clicks: ${c.likes.value}")),

        Obx(() {
          print(c.advertiseQ);
          return Text('gfhfgh');
        }),

        // Obx(() => Text(c.advertiseQ.toString())),

        //  Obx(() => Container(
        // child: Column(
        //     children: c.advertiseQ.map((element) =>  Text(element)).toList(),
        //   ),
        //  )),

        TextButton(onPressed: () => {c.increment()}, child: const Text('add')),

        TextButton(
            onPressed: () => {c.addLike()}, child: const Text('add like')),
        TextButton(
            onPressed: () => {c.fetchAdvertis()}, child: const Text('server')),

        const Expanded(
            child: Directionality(
                textDirection: TextDirection.rtl, child: ListTileExample()))
      ]),
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});
  @override
  Widget build(BuildContext context) {
    final listTiles = <Widget>[
      const Divider(thickness: 2),
      const InkWell(
        child: ListTile(
          title: Text(
            'نشان شده ها',
            style: TextStyle(fontSize: 15),
          ),
          trailing: Icon(Icons.arrow_forward),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
        ),
      ),
      const Divider(thickness: 2),
      const ListTile(
        title: Text(
          'آگهی های من',
          style: TextStyle(fontSize: 15),
        ),
        trailing: Icon(Icons.arrow_forward),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        dense: true,
        visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      ),
      const Divider(thickness: 2),
      const ListTile(
        title: Text(
          'تنظیمات',
          style: TextStyle(fontSize: 15),
        ),
        trailing: Icon(Icons.arrow_forward),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        dense: true,
        visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      ),
      const Divider(thickness: 2),
      const Divider(thickness: 2),
      const ListTile(
        title: Text(
          ' تغییر تم',
          style: TextStyle(fontSize: 15),
        ),
        trailing: Icon(Icons.arrow_forward),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        dense: true,
        visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      ),
      const Divider(thickness: 2),
      const Divider(thickness: 2),
      const ListTile(
        title: Text(
          'اوپال برای کسب کار ها',
          style: TextStyle(fontSize: 15),
        ),
        trailing: Icon(Icons.arrow_forward),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        dense: true,
        visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      ),
      const Divider(thickness: 2),
      const ListTile(
        title: Text(
          'پشتیبانی و قوانین',
          style: TextStyle(fontSize: 15),
        ),
        trailing: Icon(Icons.arrow_forward),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        dense: true,
        visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      ),
      const Divider(thickness: 2),
      const Divider(thickness: 2),
      const ListTile(
        title: Text(
          'درباره دیوار',
          style: TextStyle(fontSize: 15),
        ),
        trailing: Icon(Icons.arrow_forward),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        dense: true,
        visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      ),
      const Divider(thickness: 2),
      // const Divider(thickness: 2),
      // const ListTile(
      //   title: Text(
      //     'نسخه',
      //     style: TextStyle(fontSize: 15),
      //   ),
      //   trailing: Text('0.2.3'),
      //   contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      //   dense: true,
      //   visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      // ),
      // const Divider(thickness: 2),
    ];

    return ListView(
      children: listTiles,
      physics: const AlwaysScrollableScrollPhysics(),
    );
  }
}
