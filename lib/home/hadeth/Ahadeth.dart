import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/Hadeth_name.dart';

class Ahadeth extends StatefulWidget {
  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<Hadeth>myAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if(myAhadeth.isEmpty){
      readAhadeth();
    }
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Divider(
            color: Color(0xffB7935F),
            thickness: 2,
          ),
          Text(
            'أحاديث',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Divider(
            color: Color(0xffB7935F),
            thickness: 2,
          ),
          Expanded(
              child: ListView.separated(
                  itemCount: myAhadeth.length,
                  itemBuilder: (context,index){
                    return HadethName(myAhadeth[index]);
                  },
                  separatorBuilder:(context,index){
                  return Divider(
                    color: Color(0xffB7935F),
                    thickness: 2,
                  );},
                  ))
        ],
      ),
    );
  }

  void readAhadeth() async {
    String allAhadethContent =
        await rootBundle.loadString('assets/conduct/ahadeth .txt');
    List<String> ahadeth = allAhadethContent.trim().split("#\r\n");

    for (int i = 0; i < ahadeth.length; i++) {
      String allHadeth = ahadeth[i];
      if(allHadeth.isEmpty)continue;
      List<String> lines = allHadeth.split('\n');
      if(lines[0].isEmpty){
        lines.removeAt(0);
      }
      String title = lines[0];
      Hadeth hadeth = Hadeth(title, lines);
      myAhadeth.add(hadeth);
    }
    setState(() {
    });
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(this.title, this.content);
}
