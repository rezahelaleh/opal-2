import 'package:flutter/material.dart';

import '../lib/Components/ADVERTISE/addAdvertise.dart';
import '../lib/Components/CATEGORY/category.dart';
import '../lib/Components/INDEX/index.dart';
import '../lib/Components/PROFILE/profile.dart';

// tokhmi


class Lion extends StatefulWidget {
  const Lion({super.key});
  _LionState createState() => _LionState();
}

class _LionState extends State<Lion> {
  var myPage;
  var selectedPage;

  @override
  void initState() {
    super.initState();
    myPage = PageController(initialPage: 1);
    selectedPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: myPage,
          children: <Widget>[

            // Center(
            //   child: Text("Another Page"),
            // ),

            // Center(
            //     child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text("Page 1"),
            //     TextButton(
            //       onPressed: () {
            //         myPage.jumpToPage(0);
            //         setState(() {
            //           selectedPage = 0;
            //         });
            //       },
            //       child: Text("Go to another page"),
            //     )
            //   ],
            // )),
            // Center(child: Text("Page 2")),
            // Center(child: Text("Page 3")),
             const Index(),
             Category(),
             const AddAdvertise(),
             const Profile(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: selectedPage == 1 ? Colors.blue : Colors.grey,
                onPressed: () {
                  myPage.jumpToPage(1);
                  setState(() {
                    selectedPage = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.star),
                color: selectedPage == 2 ? Colors.blue : Colors.grey,
                onPressed: () {
                  myPage.jumpToPage(2);
                  setState(() {
                    selectedPage = 2;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                ),
                color: selectedPage == 3 ? Colors.blue : Colors.grey,
                onPressed: () {
                  myPage.jumpToPage(3);
                  setState(() {
                    selectedPage = 3;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                ),
                color: selectedPage == 4 ? Colors.blue : Colors.grey,
                onPressed: () {
                  myPage.jumpToPage(4);
                  setState(() {
                    selectedPage = 4;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
