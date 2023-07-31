import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/beaches.dart';
import 'package:hotel_booking/odaGoruntule.dart';
import 'package:hotel_booking/specialDeals.dart';

import 'AramaSayfasi.dart';
import 'anaSayfa.dart';
import 'hesapSayfasi.dart';

class SelectedHotel extends StatefulWidget {
  Beaches hotel;

  SelectedHotel({required this.hotel});


  @override
  State<SelectedHotel> createState() => _SelectedHotelState();
}

class _SelectedHotelState extends State<SelectedHotel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("resimler/${widget.hotel.beachResimAdi}"), fit:BoxFit.cover,
                        )
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 30,
                            top: 20,
                            child: GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);

                                },
                                child: Icon(Icons.arrow_back_ios , color: Colors.white,)))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width/3,
                                child: Image.asset("resimler/otelResim3.png")),
                            SizedBox(
                                width: MediaQuery.of(context).size.width/3,
                                child: Image.asset("resimler/otelResim2.png")),
                            SizedBox(
                              child: GestureDetector(
                                onTap: (){
                                  showDialog(context: context,  builder: (BuildContext context){
                                    return AlertDialog(
                                      content: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset("resimler/otelResim3.png"),
                                          Image.asset("resimler/otelResim2.png"),
                                          Image.asset("resimler/OtelResim1.png")
                                        ],
                                      ),
                                    );

                                  });


                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width/3,
                                  height: 88,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("resimler/OtelResim1.png"), fit:BoxFit.cover,
                                    )
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 40,
                                        top: 25,
                                        child: Icon(Icons.add,color: Colors.white,size: 45,))
                                  ],
                                ),
                                ),
                              ),
                            ),
                            //Icon(Icons.add , color: Colors.white,)

                          ],
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:32,bottom: 40,left: 15,right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${widget.hotel.beachAdi}",style: TextStyle(fontSize: 30),),
                        Container(
                          child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 7,right: 7 ),
                                        child: Text("${widget.hotel.beachPuan}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      ),
                                      Icon(Icons.star,color: Colors.white,),
                                    ],
                                  ),
                                ],
                              )),
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

                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("resimler/kucuk_harita.png"), fit:BoxFit.cover,
                        )
                    ),
                   /*child: Stack(
                     clipBehavior: Clip.none,
                     children: [
                       Positioned(
                           child: Image.asset("resimler/ellipse.png"))
                     ],
                   ),*/
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40,left: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          color: Colors.amberAccent,
                          child: Icon(Icons.location_on,color: Colors.orange,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text("Waikiki,HI 123456,Honolulu" , style: TextStyle(color: Colors.grey),),
                        )
                      ],

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          color: Colors.amberAccent,
                          child: Icon(Icons.directions_walk,color: Colors.orange,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text("3.2 miles from centre" , style: TextStyle(color: Colors.grey),),
                        )
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: GestureDetector(
                            onTap: (){
                              String oteloda= "${widget.hotel.beachAdi}";
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>OdaGoruntule(otelAdi: oteloda)));
                            },
                            child: Container(
                              child: Center(child: Text("Select Rooms",style: TextStyle(color: Colors.white,fontSize: 20),)),
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
                    ),
                  )

                ],
              ),
            ],
          ),


    );
  }
}
