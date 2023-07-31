import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Venice extends StatefulWidget {
  const Venice({super.key});

  @override
  State<Venice> createState() => _VeniceState();
}

class _VeniceState extends State<Venice> {
  bool aramaYapiliyorMu= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(
          decoration: InputDecoration(
            hintText: "Search for a city, area or a hotel",
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Color.fromRGBO(242, 242, 242, 1),
            border: InputBorder.none,
          ),
          onChanged: (aramaSonucu){
            print("Arama sonucu: $aramaSonucu");
          },
        )

            :
        Text("Search for a city, area or a hotel",style: TextStyle(color: Colors.grey,fontSize: 20),),
        actions: [
          aramaYapiliyorMu ?
          IconButton(
              icon: Icon(Icons.cancel),
              onPressed: (){
                setState(() {
                  aramaYapiliyorMu=false;
                });

              }, color: Colors.grey)
              :
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              setState(() {
                aramaYapiliyorMu=true;
              });
            },color: Colors.grey, )

        ],
      ),


      body: ListView(
        children: [
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
