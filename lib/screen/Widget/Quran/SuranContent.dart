import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Utls/Color.dart';

import 'SuraModel.dart';

class SuranContent extends StatefulWidget {
  static const String roteName = "SuranContent";

  @override
  State<SuranContent> createState() => _SuranContentState();
}

class _SuranContentState extends State<SuranContent> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (Verses.isEmpty) {
      ReadFile(arg.index);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            arg.SuraNme,
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: primaryColor,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  Verses[index],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: primaryColor,
          thickness: 1,
          endIndent: 40,
          indent: 40,
        ),
        itemCount: Verses.length,
      ),
    );
  }

  Future<void> ReadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    Verses = lines;
    print(lines);
    setState(() {});
  }
}
