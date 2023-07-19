import 'package:carousel_slider/carousel_slider.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';

import 'package:hexcolor/hexcolor.dart';

// import '../../configs/appColors.dart';

import 'package:persian_number_utility/persian_number_utility.dart';

final GlobalKey<AnimatedCircularChartState> _chartKey =  GlobalKey<AnimatedCircularChartState>();

final List<String> imgList = [
  'https://s6.uupload.ir/files/1f82eeadee88c0acbc8c5364538824ed_jhog.jpg',
  'https://s6.uupload.ir/files/96b42efa5dfdd501faa7e62765155587_3k9p.jpg',
  'https://s6.uupload.ir/files/a-traveler-girl-standing-on-top-of-the-cliff-free-vector_ome2.jpg',

];


class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainCard();
  }
}


class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
    
       
    
        // const Baken(),
    
        // const Stan(),

        // const Sinjier(),

        const Paracord(),
    
    
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              const SizedBox(width: 10,),
    
               Padding(
                padding: const EdgeInsets.fromLTRB(0,30,15,0),
                child: Text('جدید ترین ها',style: themeData.textTheme.titleMedium),
              ),
    
            ],
          ),
        
         
         const Padding(
             padding: EdgeInsets.only(top: 20),
             child: ComplicatedImageDemo(),
           )
          
        ],
      ),
    );
  
  }
}

class PlanType extends StatelessWidget {
  const PlanType({super.key});

  @override
  Widget build(BuildContext context) {
    // final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
      child: Column(
        children: [

          Container(
    //  padding: const EdgeInsets.fromLTRB(5, 3, 5, 2),
     decoration: BoxDecoration(
         border: Border(bottom: BorderSide(
         color: HexColor("#000000"), 
         width: 1.0, // Underline thickness
        ))
        
      ),
     child: Text(
        'نوع پلن',
        
        style: TextStyle(
        fontSize: 20,
        color: HexColor("#000"),
        // fontWeight: FontWeight.bold
        ),
       ),
      ),


          const SizedBox(height: 10,),


           Text('یک ماهه بهمراه تردمیل',
           style: TextStyle(
            color: HexColor("#000000"),
            fontWeight: FontWeight.bold,
            fontSize: 15,
            )),

          
          const SizedBox(height: 20,),


                 Container(
    //  padding: const EdgeInsets.fromLTRB(5, 3, 5, 2),
     decoration: BoxDecoration(
         border: Border(bottom: BorderSide(
         color: HexColor("#000000"), 
         width: 1.0, // Underline thickness
        ))
        
      ),
     child: Text(
        ' برنامه های فعال ',
        style: TextStyle(
        fontSize: 20,
        color: HexColor("#000000"),
        // fontWeight: FontWeight.bold
        ),
       ),
      ),

         const SizedBox(height: 10,),


           Text(' غذایی + تمرینی' ,
           style: TextStyle(
            color: HexColor("#000000"),
            fontWeight: FontWeight.bold,
            fontSize: 15,
            )),


        ],
      ),
    );
  }
}

class PlanChart extends StatelessWidget {

  const PlanChart({super.key});

  @override
  Widget build(BuildContext context) {
    // final ThemeData themeData = Theme.of(context);
    const numb = '22/30';
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
      child: Column(
       children: [
       
        //  const Divider(),
         
         const Liq(),
         const SizedBox(height: 1,),
          //  Text(,style: TextStyle(fontSize: 15,color: HexColor("#000000"),fontWeight: FontWeight.bold)),
              Container(
    //  padding: const EdgeInsets.only(
    //    bottom: 2, // Space between underline and text
    //  ),
    //  decoration: BoxDecoration(
      // color: HexColor("#e0e1dd"),
        //  border: Border(bottom: BorderSide(
        //  color: HexColor("#000000"), 
        //  width: 1.0, // Underline thickness
        // ))
      // ),
     child: Text(
        'روز باقیمانده',
        textAlign: TextAlign.end,
        style: TextStyle(
        fontSize: 20,
        color: HexColor("#ffffff"),
        // fontWeight: FontWeight.bold
        ),
       ),
      ),
         const SizedBox(height: 5,),
       
         Text(numb.toPersianDigit(),
         style: TextStyle(
          fontSize: 15,
          color: HexColor("#ffffff")
          ,fontWeight: FontWeight.bold
          ))
       ],
        ),
    );
  }
}

class Liq extends StatelessWidget {
  const Liq({super.key});
  @override
  Widget build(BuildContext context) {
   return AnimatedCircularChart(
  key: _chartKey,
  size: const Size(100, 100),
  initialChartData:  <CircularStackEntry>[
    CircularStackEntry(
      <CircularSegmentEntry>[

        CircularSegmentEntry(
          22*100/30,
          // HexColor('#F6FF7D'),
          // HexColor('#000000'),
          HexColor('#ffffff'),
          
          rankKey: 'completed',
        ),

         CircularSegmentEntry(
          100,
          // HexColor('#edf2f4'),
          HexColor('#000000'),
          // Colors.red.shade50,
          rankKey: 'remaining',
        ),

      ],
      rankKey: 'progress',
    ),
  ],
  // chartType: CircularChartType.Radial,
  chartType: CircularChartType.Pie,
  // edgeStyle: SegmentEdgeStyle.round,
  percentageValues: true,
);


  }
}


final List<Widget> imageSliders = imgList.map((item) => ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    child: Stack(
      children: <Widget>[
        Image.network(item, fit: BoxFit.cover, width: 1000.0),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            // padding: const EdgeInsets.symmetric(
            //     vertical: 10.0, horizontal: 20.0),
            // child: Text(
            //   'No. ${imgList.indexOf(item)} image',
            //   style: const TextStyle(
            //     color: Colors.white,
            //     fontSize: 20.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
        ),
      ],
    )))
    .toList();


class ComplicatedImageDemo extends StatelessWidget {
  const ComplicatedImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          );
  }
}






class Baken extends StatelessWidget {
  const Baken({super.key});

  @override
  Widget build(BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
    return     Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
          child: Card(
              elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
                      
                      width:screenWidth ,
                      height: 170,
                      decoration: const BoxDecoration(
                        borderRadius:  BorderRadius.all(Radius.circular(40)),
                        //  border: Border.all(
                        //   color: Colors.grey,
                        //   width: 0.8
                        //   ),
                        ),
              
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          
                          children: const [
                            PlanChart(),
                            PlanType()
                          ],
                          ),
                      )
            ),
          ),
        )
    ;
  }
}


class Stan extends StatelessWidget {
  const Stan({super.key});

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding:  EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.topRight,
            child:Text(' سلام  \n  .رضا ' ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,))
             ,
          ),
        ),

const SizedBox(height: 10,),


Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
        width: screenWidth,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:  HexColor("#0628EE"),
        ),
        child:  Center (
          child: Text('Hello World',style: TextStyle(color: HexColor('#ffffff')))
        ),
      ),

),

const SizedBox(height: 10,),



     Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:  HexColor("#E0FD10"),
        ),
        child:  Center (
          child: Text('Hello World',style: TextStyle(color: HexColor('#000000')))
        ),
      ),


      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(20),
          color:  HexColor("#1A1C20"),
        ),
        child:  Center (
         child: Text('Hello World',style: TextStyle(color: HexColor('#ffffff')))
        ),
      ),


      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(20),
          color:  HexColor("#0628EE"),
        ),
        child:  Center (
         child: Text('Hello World',style: TextStyle(color: HexColor('#ffffff')))
        ),
      ),
    
        ],
      ),
 


        





      ],
    );
  }
}


class Sinjier extends StatelessWidget {
  const Sinjier({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      child: Column(
        children: [

      const SizedBox(height: 10,),

         SizedBox(
                    // margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        width: screenWidth,
                        // height: 50,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(10),
                        //   color:  HexColor("#edf2f4"),
                        // ),
                        child:   Text(' سلام \n .رضا ',textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: HexColor('#000000')),),
                      ),


      const SizedBox(height: 10,),
        

      Row( 
        verticalDirection: VerticalDirection.down,
        
        children: [

          Expanded(
                  child: Container(
                    // margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        width: 160,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:  HexColor("#4938FF"),
                        ),
                        child: const PlanChart(),
                      ),
                ),
          Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        width: 160,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:  HexColor("#000000"),
                        ),
                        child: const PlanType(),
                      ),
                ),
    
                //  SizedBox(width: 160)

        ],
      )


        ],
      )
 
      );
  }
}



class Paracord extends StatelessWidget {
  const Paracord({super.key});

  @override
  Widget build(BuildContext context) {
    //  final screenWidth = MediaQuery.of(context).size.width;
     const number2 = '132';
    //  const number3 = '17/5/1401';
      // final ThemeData themeData = Theme.of(context);
    return  Container(
     padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
     child:   Column(
         children: [
     
          Container(
             margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                          
                SizedBox(
                  width: 60,
                  height: 60,
                  child:  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),//add border radius here
                    child: Image.network('https://s2.uupload.ir/files/1661306372781_mvns.jpg'),//add image location here
                  ),),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                        Row(
                            
                              children: [
                                               
                                    Text('رضا',style: TextStyle(fontSize: 15, color: HexColor("#000000"))),
                                               
                                    Text(' ,سلام ',style: TextStyle(fontSize: 15,color: HexColor("#000000"))),
                                   
                            ],),    
                      
                         Text('! بریم برای تمرین ',style: TextStyle(fontSize: 23,color: HexColor("#000000"),fontWeight: FontWeight.bold)),
                             
                    ],
                  )
                             
               ],
             ),
           ),
     


          Container(
             margin: const EdgeInsets.fromLTRB(5, 25, 5, 0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [

                   Expanded(
                     child: Container(
                        //  width: 160,
                         height: 180,
                        
                          decoration: BoxDecoration(
                         // border: Border.all(
                         //   width: 1,
                         //   color:HexColor("#e0e1dd"),
                           
                         // ),
                         color: HexColor('#000000'),
                         borderRadius: BorderRadius.circular(20),
                       ),
                         child:const PlanChart() ,
                       ),
                   ),
                 
                       const SizedBox(width: 10,),
                       
                  Container(
                                 
                      //  width: 160,
                       height: 180,
                      
                        decoration: BoxDecoration(
                       border: Border.all(
                         width: 1,
                         color:HexColor("#e0e1dd"),
                         
                       ),
                        // color: HexColor("#fff"),
                       borderRadius: BorderRadius.circular(20),
                     ),
                       child:const PlanType() ,
                     ),
                           
                
                             
               ],
             ),
           ),



          Container(
          //     decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: NetworkImage('https://s2.uupload.ir/files/undraw_mindfulness_4agt_npo3.png'),
          //       fit: BoxFit.cover),
          // ),
             margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
             child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                         
             
               Container(
                                
                      // width: 160,
                      height: 90,
                     
                          decoration: BoxDecoration(
                        // color: HexColor('#e0e1dd'),
                      border: Border.all(
                        width: 1,
                        color:HexColor("#e0e1dd"),
                        
                      ),
           borderRadius: BorderRadius.circular(20),
                        ),
           child:  
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               // crossAxisAlignment:  CrossAxisAlignment.center,
               children: [
          
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                      Icon(Icons.boy, size: 30,color: HexColor("#000000"),),
                      Text(' وزن ',
                      style:TextStyle(
                       fontSize: 18,
                       color: HexColor("#000000"),
                       fontWeight: FontWeight.bold,
                       fontFamily: 'shabnam')
                       )
                   ],
                 ),
          
          
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                       Text(
                         'KG',
                       style:
                       TextStyle(fontSize: 15,
                       color: HexColor("#000000"),
                       fontWeight: FontWeight.bold,
                       fontFamily: 'shabnam')),
                   
                      Text(
                       number2.toPersianDigit(),
                       style:TextStyle(
                         fontSize: 30,
                         color: HexColor("#000000"),
                         fontWeight: FontWeight.bold,
                         fontFamily: 'shabnam')),
                     
                   ],
                 ),
                          ],
                        ),
                                   
                                   
                            ),          

                     const SizedBox(width: 10,),
             
               Container(
               
                    // width: 160,
                    height: 90,

                    
                   
                     decoration: BoxDecoration(
                      color: HexColor('#e0e1dd'),
                    // border: Border.all(
                    //   width: 1,
                    //   color:HexColor("#e0e1dd"),
                      
                    // ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                    child:  
                      Padding(
                           padding: const EdgeInsets.fromLTRB(0, 2, 10, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment:  CrossAxisAlignment.center,
                          children: [
                                   
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 const Icon(Icons.fitness_center, size: 35, ),
                                 Text('مشاهده برنامه ها',style:TextStyle(fontSize: 16,color: HexColor("#000000"),fontWeight: FontWeight.bold,fontFamily: 'shabnam'))
                              ],
                            ),
                                   
                                   
                          
                                Padding(
                                  padding:const EdgeInsets.only(left:25),
                                  child:
                                  
                                    Row(
                             
                              children: [

                                   Text(
                                    '  غذایی ',
                                  style:
                                  TextStyle(fontSize: 20,
                                  color: HexColor("#000000"),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'shabnam')),
                              
                                 Text(
                                  ' + تمرینی   ',
                                  style:TextStyle(
                                    fontSize: 20,
                                    color: HexColor("#000000"),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'shabnam')),

                              ])
                                  
                                   ,
                                   )
                               
                                
                              ],
                          
                        ),
                      ),
                  
                  
                          ),
                             

        
                               
                 ],
               ),
            
           ),





         ],
       ),
    
      );
  }
}



































