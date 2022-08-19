
import 'package:flutter/material.dart';
import 'package:islami/suraDetails/SuraDetails.dart';

class SuraName extends StatelessWidget {
String suraname;
int index;
SuraName(this.suraname,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, SuraDetails.Route_name,arguments:SuraDetailsArgs(suraname, index+1));
      },
      child: Container(
        child: Text(suraname,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      ),
    );
  }
}
class SuraDetailsArgs{
String suraname;
int index;
SuraDetailsArgs(this.suraname,this.index);
}
