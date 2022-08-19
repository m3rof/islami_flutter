



import 'package:flutter/material.dart';

import 'Ahadeth.dart';

class HadethDetails extends StatelessWidget {
static String HadethDetails_Route='HadethRoute';
List<String> HadethContent=[];
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    HadethContent=hadeth.content;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/images/default_bg.png'),
    fit: BoxFit.fill
    )
    ),
    child:Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black) ,
        backgroundColor: Colors.transparent,elevation: 0,
        title:Text('${hadeth.title}',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),) ,
        centerTitle: true,
      ),
      body:GetViewMain(),

    ));
  }
Widget GetViewMain(){
  if (HadethContent.length == 0) {
    return Center(child: CircularProgressIndicator());
  } else {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(right: 16,left: 16
          ,bottom: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, .7),
          borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              HadethContent[index],
              textDirection: TextDirection.rtl,
              style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 25),
            );
          },
          itemCount: HadethContent.length ),
    );
  }
}}
