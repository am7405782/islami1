import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utls/Color.dart';
import '../../Utls/ShowLaguebootonSheet.dart';
import 'ShowButoonSheet.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Text(
            "Theam",
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              return ShowButtonChhet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: primaryColor, style: BorderStyle.solid),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? "Light Theam"
                      : "Dark Theam",
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Text(
            "MyLanguage:",
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              return ShowlangageSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: primaryColor, style: BorderStyle.solid),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Aradic",
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowButtonChhet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowButoonSheet(),
    );
  }

  void ShowlangageSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowLanguageShow(),
    );
  }
}
