import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Utls/Color.dart';

import 'hadithModel.dart';

class HadihContent extends StatelessWidget {
  static const String roteName = "HadihContent";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "islami",
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.bold,
              color: primaryColor,
              fontSize: 25,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
      ),
      body: Card(
        elevation: 0,
        color: Colors.white,
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  args.title,
                  style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: primaryColor,
                  endIndent: 4,
                  thickness: 2,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    args.countent,
                    style: GoogleFonts.elMessiri(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
