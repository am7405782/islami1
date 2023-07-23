import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Utls/Color.dart';

class hedith extends StatefulWidget {
  const hedith({Key? key}) : super(key: key);

  @override
  State<hedith> createState() => _hedithState();
}

class _hedithState extends State<hedith> {
  @override
  Widget build(BuildContext context) {
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
              color: Colors.black,
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
                  child: Text(
                    "data",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
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
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
