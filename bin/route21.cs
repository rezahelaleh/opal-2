import 'package:flutter/material.dart';

import 'ADVERTISE/addAdvertise.dart';
import 'CATEGORY/category.dart';
import 'INDEX/index.dart';
import 'PROFILE/profile.dart';



class Parent extends StatefulWidget {
  @override
  _ParentState createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  int bottomSelectedIndex = 0;


// void onAddButtonTapped(int index) {

//   // use this to animate to the page
//   pageController.animateToPage(index);

//   // or this to jump to it without animating
//   pageController.jumpToPage(index);
// }




  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon:  Icon(Icons.home,color: Colors.black,), label: 'First'),
      BottomNavigationBarItem(
        icon:  Icon(Icons.search,color: Colors.black),
        label: 'Second',
      ),
      BottomNavigationBarItem(
        icon:  Icon(Icons.search,color: Colors.black),
        label: 'Second',
      ),
      BottomNavigationBarItem(
        icon:  Icon(Icons.search,color: Colors.black),
        label: 'Second',
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        // FirstWidget(
        //   onButtonPressed: () => pageController.animateToPage(
        //         1,
        //         duration: Duration(milliseconds: 300),
        //         curve: Curves.linear,
        //       ),
        // ),
        // SecondWidget(),
    
    
    
    const Index(),
    Category(),
    const AddAdvertise(),
    const Profile(),
    
     ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}

class FirstWidget extends StatefulWidget {
  final VoidCallback onButtonPressed;

  FirstWidget({required this.onButtonPressed});

  @override
  _FirstWidgetState createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: TextButton(
          onPressed: widget.onButtonPressed,
          child: Text('Go to second page'),
        ),
      ),
    );
  }
}


class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}