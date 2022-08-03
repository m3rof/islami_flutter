
import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
String suraname;
SuraName(this.suraname);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(suraname,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
    );
  }
}
