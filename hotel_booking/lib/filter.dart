import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var budgetListe = <String>[];
  String selectedBudget= "Select";
  bool switchControl1 = false;
  bool switchControl2 = false;
  bool switchControl3 = false;

  @override
  void initState() {
    super.initState();
    budgetListe.add("Select");
    budgetListe.add(r"1000$ - 3000$");
    budgetListe.add(r"3000$ - 5000$");
    budgetListe.add(r"5000$ + ");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
           children: [
             Padding(
               padding: EdgeInsets.only(top: 30,left: 15,right: 15),
               child: Row(
                 children: [
                   GestureDetector(
                       onTap: (){
                         Navigator.pop(context);
                       },
                       child: Icon(Icons.arrow_back_ios , color: Colors.black,)),
                   Spacer(flex:1),
                   Text("Filter",style: TextStyle(fontSize: 30),),
                   Spacer(flex:15),
                   SizedBox(
                     width: 90,
                     height: 50,
                     child: GestureDetector(
                       onTap: (){
                         setState(() {
                           switchControl1 = false;
                           switchControl2 = false;
                           switchControl3 = false;
                         });
                       },
                       child: Card(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Reset",style: TextStyle(fontSize: 20,color: Colors.grey),),
                             ],
                           )),
                     ),
                   ),
                 ],
               ),
             ),
           Padding(
             padding: EdgeInsets.only(left: 15,right: 15,top: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Your budget",style: TextStyle(fontSize: 20,),),
                 GestureDetector(
                   onTap: (){
                     showDialog(context: context,
                         builder: (BuildContext context){
                           return AlertDialog(
                             backgroundColor: Colors.white,
                             content: SizedBox(
                               width: 300,
                               height: 200,
                               child: Column(
                                 children: [
                                   TextButton(
                                       onPressed: (){Navigator.pop(context);},
                                       child: Text(r"1000$ - 3000$" ,style: TextStyle(color: Colors.orangeAccent)),),
                                   TextButton(
                                       onPressed: (){Navigator.pop(context);},
                                       child: Text(r"3000$ - 5000$",style: TextStyle(color: Colors.orangeAccent))),
                                   TextButton(
                                       onPressed: (){Navigator.pop(context);},
                                       child: Text(r"5000$ + ",style: TextStyle(color: Colors.orangeAccent)))

                                 ],
                               ),
                             ),
                           );
                         });
                   },
                   child: Container(
                       child: Row(
                         children: [
                           Text("Select",style: TextStyle(fontSize: 20,color: Colors.grey),),
                           Icon(Icons.navigate_next_outlined , color: Colors.grey,),
                         ],
                       )
                   ),
                 ),

               ],
             ),
           ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Star Rating",style: TextStyle(fontSize: 20,),),
                   GestureDetector(
                     onTap: (){
                       showDialog(context: context,
                           builder: (BuildContext context){
                             return AlertDialog(
                               backgroundColor: Colors.white,
                               content: SizedBox(
                                 width: 300,
                                 height: 200,
                                 child: Column(
                                   children: [
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"1",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"2",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"3",style: TextStyle(color: Colors.orangeAccent)))

                                   ],
                                 ),
                               ),
                             );
                           });
                     },
                     child: Container(
                         child: Row(
                           children: [
                             Text("Select",style: TextStyle(fontSize: 20,color: Colors.grey),),
                             Icon(Icons.navigate_next_outlined , color: Colors.grey,),
                           ],
                         )
                     ),
                   ),

                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Review Score",style: TextStyle(fontSize: 20,),),
                   GestureDetector(
                     onTap: (){
                       showDialog(context: context,
                           builder: (BuildContext context){
                             return AlertDialog(
                               backgroundColor: Colors.white,
                               content: SizedBox(
                                 width: 300,
                                 height: 280,
                                 child: Column(
                                   children: [
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"1",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"2",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"3",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"4",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"5",style: TextStyle(color: Colors.orangeAccent))),


                                   ],
                                 ),
                               ),
                             );
                           });
                     },
                     child: Container(
                         child: Row(
                           children: [
                             Text("Select",style: TextStyle(fontSize: 20,color: Colors.grey),),
                             Icon(Icons.navigate_next_outlined , color: Colors.grey,),
                           ],
                         )
                     ),
                   ),

                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Meals",style: TextStyle(fontSize: 20,),),
                   GestureDetector(
                     onTap: (){
                       showDialog(context: context,
                           builder: (BuildContext context){
                             return AlertDialog(
                               backgroundColor: Colors.white,
                               content: SizedBox(
                                 width: 300,
                                 height: 200,
                                 child: Column(
                                   children: [
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"Breakfast",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"Lunch",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"Dinner",style: TextStyle(color: Colors.orangeAccent)))

                                   ],
                                 ),
                               ),
                             );
                           });
                     },
                     child: Container(
                         child: Row(
                           children: [
                             Text("Select",style: TextStyle(fontSize: 20,color: Colors.grey),),
                             Icon(Icons.navigate_next_outlined , color: Colors.grey,),
                           ],
                         )
                     ),
                   ),

                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Type",style: TextStyle(fontSize: 20,),),
                   GestureDetector(
                     onTap: (){
                       showDialog(context: context,
                           builder: (BuildContext context){
                             return AlertDialog(
                               backgroundColor: Colors.white,
                               content: SizedBox(
                                 width: 300,
                                 height: 200,
                                 child: Column(
                                   children: [
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"Select",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"Select",style: TextStyle(color: Colors.orangeAccent))),
                                     TextButton(
                                         onPressed: (){Navigator.pop(context);},
                                         child: Text(r"Select",style: TextStyle(color: Colors.orangeAccent)))

                                   ],
                                 ),
                               ),
                             );
                           });
                     },
                     child: Container(
                         child: Row(
                           children: [
                             Text("Hotel",style: TextStyle(fontSize: 20,color: Colors.grey),),
                             Icon(Icons.navigate_next_outlined , color: Colors.grey,),
                           ],
                         )
                     ),
                   ),

                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Breakfast Included",style: TextStyle(fontSize: 20,),),
                   Switch(value: switchControl1,
                       activeTrackColor: Colors.orangeAccent,
                       inactiveTrackColor: Colors.white70,
                       inactiveThumbColor: Colors.blueGrey,
                       onChanged: (veri){
                       setState(() {
                         switchControl1 = veri;
                       });
                       })
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Deals",style: TextStyle(fontSize: 20,),),
                   Switch(value: switchControl2,
                       activeTrackColor: Colors.orangeAccent,
                       inactiveTrackColor: Colors.white70,
                       inactiveThumbColor: Colors.blueGrey,
                       onChanged: (veri){
                         setState(() {
                           switchControl2 = veri;
                         });
                       })
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 15,right: 15,top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Only show available",style: TextStyle(fontSize: 20,),),
                   Switch(value: switchControl3,
                       activeTrackColor: Colors.orangeAccent,
                       inactiveTrackColor: Colors.white70,
                       inactiveThumbColor: Colors.blueGrey,
                       onChanged: (veri){
                         setState(() {
                           switchControl3 = veri;
                         });
                       })
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 30,bottom: 30),
               child: SizedBox(
                 width: 300,
                 height: 50,
                 child: Container(
                   child: Center(child: Text("Apply",style: TextStyle(color: Colors.white,fontSize: 20),)),
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.orangeAccent, width: 0),
                     gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                       colors: [Colors.orange, Colors.yellow,],
                     ),
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black26,
                         blurRadius: 5,
                         spreadRadius: 1.5,
                         offset: Offset(5, 5),
                       )
                     ],
                   ),
                 ),
               ),
             ),



           ],
          )
        ],
      ),
    );
  }
}
