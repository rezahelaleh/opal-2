import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'index.dart';

class Cxv extends StatefulWidget {
  const Cxv({Key? key}) : super(key: key);

  @override
  _CxvState createState() => _CxvState();
}

class _CxvState extends State<Cxv> {
  @override
  Widget build(BuildContext context) {
    
    void openBottomSheet() {
      Get.bottomSheet(

        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Bottom Sheet',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Close'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide()
        ),
      );
    }

    return Builder(
      builder: (context) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(
                width: 2,
                color: HexColor("#000000"),
              ),
              color: HexColor('#ffffff'),
            ),
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: <Widget>[
                  TextButton(
                    child: Text(
                      'آبادان',
                      style: TextStyle(
                        color: HexColor("#000"),
                        fontSize: 16,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black12,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        backgroundColor: HexColor("#ffffff"),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2, // thickness
                                color: Colors.black // color
                                ),
                            // border radius
                            borderRadius: BorderRadius.circular(12))

                        //   // border: Border.all(
                        //   //    width: 2,
                        //   //    color:HexColor("#000000"),

                        //   //  ),

                        ),
                    // style: ButtonStyle(
                    //   shape: MaterialStatePropertyAll(Border.all(color: HexColor("#225577")))
                    // ),

                    onPressed: () {
                      openBottomSheet();
                      // showModalBottomSheet(
                      //   // constraints: BoxConstraints.expand(height: 200),
                      //   isDismissible: true,
                      //   isScrollControlled: true,
                      //   useSafeArea: true,
                      //   clipBehavior: Clip.hardEdge,
                      //   enableDrag: true,

                      //   shape: ContinuousRectangleBorder(
                      //       borderRadius: BorderRadius.vertical(
                      //           top: Radius.circular(60))),
                      //   // shape: ContinuousRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(60))),
                      //   context: context,
                      //   // shape: BeveledRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
                      //   // shape: BeveledRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
                      //   builder: (context) {
                      //     return
                      //         // Column(
                      //         //   children: [
                      //         //     Container(
                      //         //       margin: EdgeInsets.only(top: 10),
                      //         //       child: Icon(Icons.maximize, size: 35),
                      //         //     ),
                      //         //     Directionality(
                      //         //       textDirection: TextDirection.rtl,
                      //         //       child: Wrap(
                      //         //         children: const [
                      //         //           ListTile(
                      //         //             leading: Icon(Icons.share),
                      //         //             title: Text('Share'),
                      //         //           ),
                      //         //           ListTile(
                      //         //             leading: Icon(Icons.share),
                      //         //             title: Text('Share'),
                      //         //           ),
                      //         //           ListTile(
                      //         //             leading: Icon(Icons.share),
                      //         //             title: Text('Share'),
                      //         //           ),
                      //         //           ListTile(
                      //         //             leading: Icon(Icons.copy),
                      //         //             title: Text('Copy Link'),
                      //         //           ),
                      //         //           ListTile(
                      //         //             leading: Icon(Icons.edit),
                      //         //             title: Text('Edit'),
                      //         //           ),

                      //         //           // SizedBox(height: 20,),
                      //         //         ],
                      //         //       ),
                      //         //     ),

                      //         //   ],
                      //         // );

                      //         Directionality(
                      //       textDirection: TextDirection.rtl,
                      //       child: Wrap(
                      //         children: const [
                      //           ListTile(
                      //             leading: Icon(Icons.share),
                      //             title: Text('Share'),
                      //           ),
                      //           ListTile(
                      //             leading: Icon(Icons.share),
                      //             title: Text('Share'),
                      //           ),
                      //           ListTile(
                      //             leading: Icon(Icons.share),
                      //             title: Text('Share'),
                      //           ),
                      //           ListTile(
                      //             leading: Icon(Icons.copy),
                      //             title: Text('Copy Link'),
                      //           ),
                      //           ListTile(
                      //             leading: Icon(Icons.edit),
                      //             title: Text('Edit'),
                      //           ),

                      //           // SizedBox(height: 20,),
                      //         ],
                      //       ),
                      //     );
                      //   },
                      // );
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    // style: ButtonStyle(
                    // padding: const MaterialStatePropertyAll(EdgeInsets.fromLTRB(20,20,20,20)),
                    // backgroundColor: MaterialStatePropertyAll(HexColor("#000")),
                    // shape: MaterialStateProperty.all(Border.all(width: 4)),
                    // ),
                    // color: HexColor("#789090"),
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => FullScreenDialog(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'اوپال من',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class FullScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          //replace with our own icon data.
        ),
        backgroundColor: HexColor("#000000"),
        title: Text('Full-screen Dialog'),
      ),
      body: Center(
        child: Text("Full-screen dialog"),
      ),
    );
  }
}
