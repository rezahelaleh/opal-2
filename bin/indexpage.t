import 'package:bottom_sheet_scaffold/views/bottom_sheet.dart';
import 'package:bottom_sheet_scaffold/views/bottom_sheet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'package:sticky_headers/sticky_headers.dart';

import 'cxv.dart';




class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {

String searchText="";



  @override
  Widget build(BuildContext context) {

    // return   Cxv();
    
    
   return Padding(
      padding: const EdgeInsets.all(15),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: GestureDetector(
          onTap: ()=> FocusScope.of(context).unfocus(),
          child: 

          Center(
          child: Column(
                children:  [

                Cxv(),
                  
               
                SizedBox(height: 20,),
                MainCard(),
              
               
            ] 
              ),
        )

        ),
      ),
    );
    

  }
}

// class MainSearchbar extends StatelessWidget {
//    MainSearchbar({super.key});

// String searchText = "";

//   @override
//   Widget build(BuildContext context) {
//      final screenWidth = MediaQuery.of(context).size.width;

//     return  Container(
//                 //  margin: const EdgeInsets.only(top: 5),
//                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//                  decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(
//                          width: 1,
//                          color:HexColor("#fefefe"),
                         
//                        ),
//                         color: HexColor('#fefefe'),
//                 ),
//                  child:  


//                         TextField(

//                           onTap: (){
//                               Navigator.push(
//               context,
//               MaterialPageRoute<void>(
//                 builder: (BuildContext context) => FullScreenDialog(),
//                 fullscreenDialog: true,
//               ),
//             );
//                           },
            
//           decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           hintStyle: TextStyle(color: Colors.black),
//              enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: BorderSide(
//           color: Colors.white,
//           width: 1.0,
//               ),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: BorderSide(
//           color: Colors.black,
//           width: 1.0,
//               ),
//             ),
//           // labelText: 'label',
//           hintText: 'جستجو ...',
//           // helperText: 'help',
//           // counterText: 'counter',
//           icon: ElevatedButton(
//           style:  ButtonStyle(
//             backgroundColor: MaterialStatePropertyAll(HexColor("#000000")),
//             shape:MaterialStatePropertyAll( RoundedRectangleBorder(  
//                       borderRadius: BorderRadius.circular(15))), 
//             ),
//           onPressed: () { 
        
//            },
//            child: const SizedBox(
//           width: 55,
//           height: 50,
//           child:   Center(child: Text('آبادان ',style: TextStyle(fontSize: 17),)),
        
//            ) ,
//            ),
//           // prefixIcon: Icon(Icons.favorite),
//           // suffixIcon: Icon(Icons.park),
//           ),
//             ),
                 
                 
                 
//                   );
          
   
    
//   }
// }



class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);
 
    
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
      
    
      
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
             
      
                 Text('new style',style: themeData.textTheme.titleMedium),
                 
      
              ],
            ),
          


          ],
        ),
      );
 
  
  }
}

class FullScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon:Icon(Icons.close), 
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


















