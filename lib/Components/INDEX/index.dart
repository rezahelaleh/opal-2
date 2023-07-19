import 'package:bottom_sheet_scaffold/views/bottom_sheet.dart';
import 'package:bottom_sheet_scaffold/views/bottom_sheet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'package:sticky_headers/sticky_headers.dart';

import 'adCard.dart';
import 'catCard.dart';
import 'cxv.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    // return   Cxv();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: Column(
                children:  const[
                 Cxv(),
                 SizedBox(
                  height: 20,
                ),
                 CatCard(),
                 SizedBox(
                  height: 20,
                ),
                 AdCard()
              ]),
            )),
      ),
    );
  }
}
