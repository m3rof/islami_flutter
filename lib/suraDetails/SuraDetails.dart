import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/SuraName.dart';

class SuraDetails extends StatefulWidget {
  static String Route_name = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLine = [];
  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (suraLine.length == 0)
      ReadSuraFile('assets/conduct/' + args.index.toString() + '.txt');
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff242424)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            args.suraname,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
        ),
        body:GetViewMain()
      ),
    );
  }

  Widget GetViewMain(){
    if (suraLine.length == 0) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(right: 16,left: 16
            ,bottom: MediaQuery.of(context).size.height*.1),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, .7),
            borderRadius: BorderRadius.all(Radius.circular(16))
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                suraLine[index],
                textDirection: TextDirection.rtl,
                style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 25),
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                  width: 2, height: 2, color: Color(0xffB7935F));
            },
            itemCount: suraLine.length - 2),
      );
    }
  }

  void ReadSuraFile(String fileName) async {
    String suracontent = await rootBundle.loadString(fileName);
    print(suracontent);
    suraLine = suracontent.split('\n');
    setState(() {});
  }
}
