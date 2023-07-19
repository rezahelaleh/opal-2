import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CatCard extends StatelessWidget {
  const CatCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        // width: screenWidth,
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white12,
            ),
            onPressed: () => {},
            child: Column(
              children: [
                Icon(
                  Icons.home_max_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  ' خانه',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white12,
          ),
          onPressed: () => {},
          child: Column(
            children: [
              Icon(
                Icons.work_outline_outlined,
                color: Colors.black,
                size: 25,
              ),
              Text(
                'استخدام',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white12,
          ),
          onPressed: () => {},
          child: Column(
            children: [
              Icon(
                Icons.directions_car_outlined,
                color: Colors.black,
                size: 25,
              ),
              Text(
                'خودرو',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white12,
          ),
          onPressed: () => {},
          child: Column(
            children: [
              Icon(
                Icons.soup_kitchen_outlined,
                color: Colors.black,
                size: 25,
              ),
              Text(
                'مواد غذایی',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white12,
          ),
          onPressed: () => {},
          child: Column(
            children: [
              Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 25,
              ),
              Text(
                ' بیشتر',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
