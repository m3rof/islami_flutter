
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
String counter='0';
String tasbih='سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),

            InkWell(
              onTap:IncreaseCounter,
              child: Image.asset('assets/images/body_sebha_logo.png',width: 150,height: 150,),
            ),
            SizedBox(height: 30,),
            Text('عدد التسبيحات',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(5),
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: Color(0xffB7935F)
                )
              ),
              child: Text(counter,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),textAlign: TextAlign.center,),
            ),
            SizedBox(height:20),
            Container(
              margin: EdgeInsets.all(2),
              width: 140,
              decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(
                  color: Color(0xffB7935F)
                )
              ),
              child: Text(tasbih,style: TextStyle(color:Colors.white ,fontWeight: FontWeight.w500,fontSize: 25),
                  textAlign: TextAlign.center),
            )


          ],
        ),
      ),
    );
  }

  void IncreaseCounter(){
    int counterint=int.parse(counter);
   counterint++;
   counter=counterint.toString();
   TasbihString();
   setState(() {});
  }
  void TasbihString(){
    int counterint=int.parse(counter);
    if(counterint<=33){
      tasbih='سبحان الله';
    }else if(counterint>33&&counterint<=66){
      tasbih='الحمد لله';
    }else if(counterint>66&&counterint<=99){
      tasbih='الله اكبر';
    }else if(counterint>99){
      tasbih='لا إله إلا الله';
    }
  }
}
