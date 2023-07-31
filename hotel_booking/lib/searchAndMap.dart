import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/specialDeals.dart';

import 'AramaSayfasi.dart';
import 'SelectedHotel.dart';
import 'anaSayfa.dart';
import 'beaches.dart';
import 'filter.dart';
import 'hesapSayfasi.dart';

class SearchAndMap extends StatefulWidget {
  String arama;

  SearchAndMap(this.arama);

  @override
  State<SearchAndMap> createState() => _SearchAndMapState();
}

class _SearchAndMapState extends State<SearchAndMap> {
  var secilenIndeks = 0;
  Future<List<Beaches>> OtelGetir() async {
    var OtelListesi=<Beaches>[];
    var Otel1 =Beaches(beachAdi: "Beach Resort Lux", beachResimAdi: "resortLux.png", beachPuan:"4.5", beachFiyat: 700);
    var Otel2 =Beaches(beachAdi: "Ocean View Hotel", beachResimAdi: "oceanHotel.png", beachPuan:"4.2", beachFiyat: 800);
   // var Otel3 =Beaches(beachAdi: "Beach Resort Lux", beachResimAdi: "resortLux.png", beachPuan: "4.5", beachFiyat: 900);
    OtelListesi.add(Otel1);
    OtelListesi.add(Otel2);
    //OtelListesi.add(Otel3);
    return OtelListesi;
  }
  var Otel1 =Beaches(beachAdi: "Beach Resort Lux", beachResimAdi: "resortLux.png", beachPuan:"4.5", beachFiyat: 720);
  bool aramaYapiliyorMu =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.arama}",style: TextStyle(color: Colors.black,fontSize: 15),),

      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 13),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.filter_list_alt , color: Colors.grey,),
                    Padding(
                      padding:EdgeInsets.only(left: 10,right: 260),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Filter()));
                          },
                          child: Text("Filter",style: TextStyle(color: Colors.grey,fontSize: 20),)),
                    ),
                    Text("Map",style: TextStyle(color: Colors.grey,fontSize: 20),),

                  ],

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45,left: 15),
                child: Row(
                  children: [
                    Text("Near The Beaches" , style: TextStyle(color: Colors.black,fontSize: 20,),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6,top: 30, bottom: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 400,
                      height: 200,
                      child: FutureBuilder<List<Beaches>> (
                        future: OtelGetir(),
                        builder: (context,snapshot){
                          if(snapshot.hasData){
                            var otelListesi=snapshot.data;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: otelListesi?.length,
                              itemBuilder: (context,indeks){
                                var otel= otelListesi?[indeks];
                                return SizedBox(
                                  width: 300,
                                  height: 180,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: (){
                                        Beaches hotel = otel!;
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedHotel(hotel: otel!)));
                                      },
                                      child: Card(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 250,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage("resimler/${otel?.beachResimAdi}"), fit:BoxFit.cover,
                                              )
                                          ),
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                height: 180,
                                                  width: 270,
                                                  top: 0,
                                                  child: Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Container(
                                                                child: Center(
                                                                    child: Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding:  EdgeInsets.only(left: 7,right: 7 ),
                                                                              child: Text("${otel?.beachPuan}",style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Text("${otel?.beachAdi}",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                                                            ],
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  ))

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }else{
                            return Center(
                              child: Container(
                                color: Colors.black,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
          SizedBox(
            height: 400,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20)
                
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedHotel(hotel: Otel1)));
                        },
                        child: Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  //bottom: Radius.circular(20),
                                  top: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("resimler/${Otel1.beachResimAdi}"), fit:BoxFit.cover,
                                )
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  height: 300,
                                  top: 200,
                                  left: 20,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(right: 50),
                                              child: Text("${Otel1.beachAdi}",style: TextStyle(color: Colors.white,fontSize: 30,),),
                                            ),
                                            SizedBox(
                                              width: 70,
                                              height: 30,
                                              child: Container(
                                                child: Center(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:  EdgeInsets.only(left: 7,right: 7 ),
                                                              child: Text("${Otel1.beachPuan}",style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom:10,left: 8),
                          child: Text("Waikiki,4.1 miles from center",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Ocean View 1 King Bed",style: TextStyle(color: Colors.black,fontSize: 15),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("No Premayment",style: TextStyle(color: Colors.black,fontSize: 15),),
                            ),
                            Text(r"$" "${Otel1.beachFiyat}",style: TextStyle(color: Colors.black,fontSize: 25),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],


              ),
            ),
          ),
          



        ],
      ),
        bottomNavigationBar: BottomNavigationBar(

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_sharp),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),

          ],
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: secilenIndeks,
          onTap: (indeks){
            setState(() {
              secilenIndeks=indeks;
              if(secilenIndeks==0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AnaSayfa()));
              }
              if(secilenIndeks==1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AramaSayfa()));
              }
              if(secilenIndeks==2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SpecialDeals()));
              }
              if(secilenIndeks==3){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HesapSayfasi()));
              }

            });
          },
        ),
    );
  }
}
