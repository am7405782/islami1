import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Utls/Color.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int counter = 1;
  List<String> sedhacountent = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  int index = 0;
  double _rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Transform.rotate(
              angle: _rotationAngle * (3.14 / 180),
              child: Image.asset(
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? "assets/images/Group 10.png"
                      : "assets/images/Group 11.png"),
            ),
            Text(
              AppLocalizations.of(context)!.thenumberpraises,
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            MaterialButton(
              onPressed: () {
                counter++;
                _rotationAngle += 4.6;
                setState(() {});
                if (counter == 31) {
                  return setState(() {
                    counter = 0;
                    if (index < 2) {
                      index++;
                    } else {
                      index = 0;
                    }
                  });
                  ;
                }
                ;
              },
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? primaryColor
                      : Colors.white10,
                ),
                child: Center(
                  child: Text(
                    "${counter}",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.brightness ==
                              Brightness.light
                          ? Colors.black
                          : Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? primaryColor
                      : sceond,
                ),
                child: Center(
                  child: Text(
                    "${sedhacountent[index]}",
                    style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.brightness ==
                              Brightness.light
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onpress() {
    return setState(() {
      counter++;
      _rotationAngle += 45.0;

      if (counter == 31) {
        return setState(() {
          counter = 0;
          index++;
        });
      }
    });
  }
}
