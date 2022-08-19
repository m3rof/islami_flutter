


import 'package:flutter/material.dart';
import 'package:islami/Home/Home.dart';
import 'package:islami/home/hadeth/Hadeth_Details.dart';
import 'package:islami/suraDetails/SuraDetails.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      Home.Route_Home:(context)=>Home(),
      SuraDetails.Route_name:(context)=>SuraDetails(),
      HadethDetails.HadethDetails_Route:(context)=>HadethDetails()
    },
    initialRoute: Home.Route_Home,
  ));
}