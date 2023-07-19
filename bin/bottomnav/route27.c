import 'package:flip_box_bar_plus/flip_box_bar_plus.dart';
import 'package:flutter/material.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';

// khoshkel rangi

class MyToy extends StatefulWidget {
  @override
  _MyToyState createState() => _MyToyState();
}

class _MyToyState extends State<MyToy> {
  int selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    const Index(),
    Category(),
    const AddAdvertise(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ), //
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: FlipBoxBarPlus(
          animationDuration: Duration(milliseconds: 500),
          selectedIndex: selectedIndex,
          navBarHeight: 100,

          // items: [
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.map,
          //         color: Colors.white,
          //       ),
          //       text: Text("Map", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black54,
          //       backColor: Colors.black87),
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.add,
          //         color: Colors.white,
          //       ),
          //       text: Text("Add", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black,
          //       backColor: Colors.black),
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.chrome_reader_mode,
          //         color: Colors.white,
          //       ),
          //       text: Text("Read", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black,
          //       backColor: Colors.black),
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.print,
          //         color: Colors.white,
          //       ),
          //       text: Text("Print", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black,
          //       backColor: Colors.black),
          // ],
          // items: [
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.map,
          //         color: Colors.white,
          //       ),
          //       text: Text("Map", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.green,
          //       backColor: Colors.grey),
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.add,
          //         color: Colors.white,
          //       ),
          //       text: Text("Add", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black,
          //       backColor: Colors.grey),
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.chrome_reader_mode,
          //         color: Colors.white,
          //       ),
          //       text: Text("Read", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black,
          //       backColor: Colors.grey),
          //   FlipBarItem(
          //       icon: Icon(
          //         Icons.print,
          //         color: Colors.white,
          //       ),
          //       text: Text("Print", style: TextStyle(color: Colors.white)),
          //       frontColor: Colors.black,
          //       backColor: Colors.grey),
          // ],

          items: [
            FlipBarItem(
                icon: Icon(Icons.map),
                text: Text("Map"),
                frontColor: Colors.blue,
                backColor: Colors.blueAccent),
            FlipBarItem(
                icon: Icon(Icons.add),
                text: Text("Add"),
                frontColor: Colors.cyan,
                backColor: Colors.cyanAccent),
            FlipBarItem(
                icon: Icon(Icons.chrome_reader_mode),
                text: Text("Read"),
                frontColor: Colors.orange,
                backColor: Colors.orangeAccent),
            FlipBarItem(
                icon: Icon(Icons.print),
                text: Text("Print"),
                frontColor: Colors.purple,
                backColor: Colors.purpleAccent),
          ],

          // items: [
          //   FlipBarItem(
          //       icon: Icon(Icons.map),
          //       text: Text("Map"),
          //       frontColor: Colors.blue,
          //       backColor: Colors.blueAccent),
          //   FlipBarItem(
          //       icon: Icon(Icons.add),
          //       text: Text("Add"),
          //       frontColor: Colors.cyan,
          //       backColor: Colors.cyanAccent),
          //   FlipBarItem(
          //       icon: Icon(Icons.chrome_reader_mode),
          //       text: Text("Read"),
          //       frontColor: Colors.orange,
          //       backColor: Colors.orangeAccent),
          //   FlipBarItem(
          //       icon: Icon(Icons.print),
          //       text: Text("Print"),
          //       frontColor: Colors.purple,
          //       backColor: Colors.purpleAccent),
          // ],
          onIndexChanged: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
            });
          },
        ),
      ),
    );
  }
}
