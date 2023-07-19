// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:get/get.dart';
// import 'package:hexcolor/hexcolor.dart';

// import '../../app.dart';
// import '../CATEGORY/category.dart';
// import '../INDEX/index.dart';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   void initState() {
//     super.initState();
//     print('hi there');
//     // Get.to(const Index());
//     //  Get.toNamed("/Profile");
//     //  Navigator.pushNamed(context, '/Category');
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       margin: const EdgeInsets.only(top: 20),
//       child: Column(children: [
//         Container(
//           margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
//           child: const Align(
//             alignment: AlignmentDirectional.centerStart,
//             child: Text('اوپال من',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//           ),
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Container(
//                 margin: const EdgeInsets.fromLTRB(2, 0, 2, 3),
//                 width: 120,
//                 height: 110,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(17),
//                   // border: Border.all(
//                   //   width: 2,
//                   //   color: HexColor("#000000"),
//                   // ),
//                   color: HexColor('#e8f1f2'),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.all(17),
//                   child: Column(
//                     children: [
//                       Text('رضا هلاله'),
//                       Text('09165971736'),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 margin: const EdgeInsets.fromLTRB(2, 0, 2, 3),
//                 width: 120,
//                 height: 110,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(17),
//                   // border: Border.all(
//                   //   width: 2,
//                   //   color: HexColor("#000000"),
//                   // ),
//                   color: HexColor('#e8f1f2'),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.all(17),
//                   child: Column(
//                     children: [
//                       Text('رضا هلاله'),
//                       Text('09165971736'),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const Expanded(
//             child: Directionality(
//                 textDirection: TextDirection.rtl, child: ListTileExample()))
//       ]),
//     );
//   }
// }

// class ListTileExample extends StatelessWidget {
//   const ListTileExample({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final listTiles = <Widget>[
//       const Divider(thickness: 2),
//       const InkWell(
//         child: ListTile(
//           title: Text(
//             'نشان شده ها',
//             style: TextStyle(fontSize: 15),
//           ),
//           trailing: Icon(Icons.arrow_forward),
//           contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//           dense: true,
//           visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//         ),
//       ),
//       const Divider(thickness: 2),
//       const ListTile(
//         title: Text(
//           'آگهی های من',
//           style: TextStyle(fontSize: 15),
//         ),
//         trailing: Icon(Icons.arrow_forward),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//         dense: true,
//         visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//       ),
//       const Divider(thickness: 2),
//       const ListTile(
//         title: Text(
//           'تنظیمات',
//           style: TextStyle(fontSize: 15),
//         ),
//         trailing: Icon(Icons.arrow_forward),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//         dense: true,
//         visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//       ),
//       const Divider(thickness: 2),
//       const ListTile(
//         title: Text(
//           ' تغییر تم',
//           style: TextStyle(fontSize: 15),
//         ),
//         trailing: Icon(Icons.arrow_forward),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//         dense: true,
//         visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//       ),
//       const Divider(thickness: 2),
//       const Divider(thickness: 2),
//       const ListTile(
//         title: Text(
//           'پشتیبانی و قوانین',
//           style: TextStyle(fontSize: 15),
//         ),
//         trailing: Icon(Icons.arrow_forward),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//         dense: true,
//         visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//       ),
//       const Divider(thickness: 2),
//       const ListTile(
//         title: Text(
//           'درباره دیوار',
//           style: TextStyle(fontSize: 15),
//         ),
//         trailing: Icon(Icons.arrow_forward),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//         dense: true,
//         visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//       ),
//       const Divider(thickness: 2),
//       // const Divider(thickness: 2),
//       const ListTile(
//         title: Text(
//           'نسخه',
//           style: TextStyle(fontSize: 15),
//         ),
//         trailing: Text('0.2.3'),
//         contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
//         dense: true,
//         visualDensity: VisualDensity(horizontal: 0, vertical: -3),
//       ),
//       // const Divider(thickness: 2),
//     ];

//     return ListView(
//       children: listTiles,
//       physics: const AlwaysScrollableScrollPhysics(),
//     );
//   }
// }
















{/* 
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(body: Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 42,
      separatorBuilder: (_, __) => Container(height: 1.5, color: Colors.grey[300]),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('item $index'),
        );
      },
    );
  }
} */}













// Container(
          //   margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
          //   child: const Align(
          //     alignment: AlignmentDirectional.centerStart,
          //     child: Text('اوپال من',
          //         style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          //   ),
          // ),

          // Container(
          //   margin: const EdgeInsets.fromLTRB(10, 0, 10, 3),
          //   width: screenWidth,
          //   height: 110,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(17),
          //     // border: Border.all(
          //     //   width: 2,
          //     //   color: HexColor("#000000"),
          //     // ),
          //     color: HexColor('#e8f1f2'),
          //   ),
          //   child: const Padding(
          //     padding: EdgeInsets.all(17),
          //     child: Column(
          //       children: [
          //         Text('رضا هلاله'),
          //         Text('09165971736'),
          //       ],
          //     ),
          //   ),
          // ),
















          {/* InkWell(
        onTap: () => {},
        child: Container(
          // height: 45,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: HexColor('004a77'),
                    width: 2,
                  ),
                  // top: BorderSide(
                  //   color: HexColor('004a77'),
                  //   width: 0.3,
                  // )
                  )),
          child: const ListTile(
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
      ), */}