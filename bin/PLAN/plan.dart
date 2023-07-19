import 'package:flutter/material.dart';
import 'tile_select.ts';



class Plan extends StatelessWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child:  
        const FeaturesTileLeading()
      
    );
  }
}