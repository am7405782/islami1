import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screen/logic/Myprovider.dart';
import 'Color.dart';

class ShowLanguageShow extends StatelessWidget {
  const ShowLanguageShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
        style: BorderStyle.solid,
        color: primaryColor,
      )),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.ChageLAguage("en");
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      provider.Language == "en" ? "English" : "عربي",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.done_outline,
                      size: 30,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              provider.ChageLAguage("ar");
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    // Icon(
                    //   Icons.done_outline,
                    //   size: 30,
                    //   color: Colors.black,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
