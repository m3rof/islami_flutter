import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/Ahadeth.dart';
import 'package:islami/home/hadeth/Hadeth_Details.dart';

class HadethName extends StatelessWidget {
  Hadeth hadeth;
  HadethName(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context,HadethDetails.HadethDetails_Route,arguments: hadeth);
      },
      child: Container(
        child: Text(hadeth.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      ),
    );
  }
}