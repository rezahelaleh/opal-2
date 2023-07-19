// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:get/get.dart';
// import '../widgets/icon_badge.dart';
import '../../configs/appTheme.dart';
import './choices.dart' as choices;

class FeaturesTileLeading extends StatefulWidget {
  const FeaturesTileLeading({super.key});

  @override
  _FeaturesTileLeadingState createState() => _FeaturesTileLeadingState();
}

class _FeaturesTileLeadingState extends State<FeaturesTileLeading> {
  
  String? _day = '';
  List<String> fruits = [];


  // Color get primaryColor => Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    return  Column(
      children: [
       
       Container(
         margin: const EdgeInsets.only(top: 15),
        child: const Text(
        "خرید پلن",
        style: TextStyle(
        fontSize: 20,
        fontFamily: "shabnam",
        fontWeight: FontWeight.bold
        ),)),
     
           Container(
            margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                        // color: HexColor('#e0e1dd'),
                      border: Border.all(
                        width: 1,
                        color:HexColor("#e0e1dd"),
                        
                      ),
           borderRadius: BorderRadius.circular(20),
                        ),
          padding: const EdgeInsets.all(10),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
          
                   SmartSelect<String?>.single(
                    choiceLayout: S2ChoiceLayout.wrap,
                  title: 'انتخاب پلن',
                  selectedValue: _day,
                  choiceItems: choices.heroes,
                  onChange: (selected) => setState(() => _day = selected.value),
                  modalType: S2ModalType.bottomSheet,
                  modalStyle: const S2ModalStyle(
                    
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            
                  modalFilter: true,
                  tileBuilder: (context, state) {
                    return S2Tile.fromState(
                      state,
                      isTwoLine: true,
                     
                    );
                  },
                ),
          
          
                  const Divider(indent: 15),
          
          
                   SmartSelect<String>.multiple(
                  title: 'انتخاب برنامه',
                  selectedValue: fruits,
                  choiceItems: choices.fruits,
                  onChange: (selected) => setState(() => fruits = selected.value),
                  modalType: S2ModalType.bottomSheet,
                      modalStyle: const S2ModalStyle(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
                  modalFilter: true,
                  tileBuilder: (context, state) {
                    return S2Tile.fromState(
                      state,
                      isTwoLine: true,
                      // leading: const CircleAvatar(
                      //   backgroundImage: NetworkImage(
                      //     'https://source.unsplash.com/8I-ht65iRww/100x100',
                      //   ),
                      // ),
                    );
                  },
                ),
          
                   const Divider(indent: 20),
        
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const  [
                        Text("هزینه ی کل",style: TextStyle(fontFamily:AppTheme.defaultFontFamily )),
                        Text('40000',style: TextStyle(fontFamily:AppTheme.defaultFontFamily )),
                      ],
                    ),
                  ),
              
        
                // const SizedBox(height: 7),
          
              ],
            ),
          ),
          
          ),
        
       

    const SizedBox(height: 15,),

    const Align(
                  alignment: Alignment.topRight,
                  child: Text('توجه : این متن یه منظور تست در اینجا قرار گرفته است')
                  ),

    // const SizedBox(height: 340,),
    const SizedBox(height: 40,),
                  
   ElevatedButton(

        // style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff6c63ff))),
        style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(HexColor("#000000"))),
        onPressed: () {  },
         child: SizedBox(
        width: screenWidth,
        height: 50,
        child:  const Align(
        alignment: Alignment.center,
        child: Text('ادامه خرید',style: TextStyle(fontSize: 17),),
        ),
         ) ,
         ),

      ],
    );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
  }
}
