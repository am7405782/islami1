import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Utls/Color.dart';

import 'HadithContent.dart';
import 'hadithModel.dart';

class hedith extends StatefulWidget {
  const hedith({Key? key}) : super(key: key);

  @override
  State<hedith> createState() => _hedithState();
}

class _hedithState extends State<hedith> {
  List<HadethModel> AllAhadith = [];

  @override
  Widget build(BuildContext context) {
    if (AllAhadith.isEmpty) {
      loadFileHadith();
    }
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/hedith.png"),
          Divider(
            indent: 2,
            thickness: 2,
            color: primaryColor,
          ),
          Text(
            "Hadith",
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            indent: 4,
            thickness: 4,
            endIndent: 4,
            color: primaryColor,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadihContent.roteName,
                          arguments: AllAhadith[index]);
                    },
                    child: Center(
                      child: Text(
                        AllAhadith[index].title,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  indent: 2,
                  thickness: 2,
                  color: primaryColor,
                );
              },
              itemCount: AllAhadith.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadFileHadith() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhaditContent = value.split("#");
      for (int i = 0; i < AhaditContent.length; i++) {
        int lastindex = AhaditContent[i].trim().indexOf("\n");
        String title = AhaditContent[i].trim().substring(0, lastindex);
        print(title);
        String content = AhaditContent[i].trim().substring(lastindex + 1);
        HadethModel headthModel = HadethModel(title, content);
        AllAhadith.add(headthModel);
        setState(() {});
      }
      // for(int i=0;i<AhaditContent.length;i++){
      //   List<String>lines=AhaditContent[i].trim().split("\n");
      //   String title=lines[0];
      //   lines.removeAt(0);
      //   List<String>Countent=lines;
      //   print(title);
      //   AhadthModel headthModel= AhadthModel(title,Countent);
      //   haditData.add(headthModel );
      //
      // }
    }).catchError((error) {
      print(error.toString());
    });
  }
}
