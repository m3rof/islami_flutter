
import 'package:flutter/material.dart';
import 'package:islami/Home/Home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      Home.Route_Home:(context)=>Home()
    },
    initialRoute: Home.Route_Home,
  ));
}