import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Utls/Color.dart';

class radio extends StatelessWidget {
  const radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Text("Holy Quran broadcast",
              style: GoogleFonts.elMessiri(
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? primaryColor
                      : sceond,
                  radius: 30,
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? primaryColor
                      : sceond,
                  radius: 30,
                  child: Icon(
                    Icons.stop,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? primaryColor
                      : sceond,
                  radius: 30,
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
