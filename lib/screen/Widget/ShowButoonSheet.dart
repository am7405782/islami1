import 'package:flutter/material.dart';
import 'package:islami_app/Utls/Color.dart';
import 'package:islami_app/screen/logic/Myprovider.dart';
import 'package:provider/provider.dart';

class ShowButoonSheet extends StatefulWidget {
  IconData icon = Icons.done_all_outlined;

  @override
  State<ShowButoonSheet> createState() => _ShowButoonSheetState();
}

class _ShowButoonSheetState extends State<ShowButoonSheet> {
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
              provider.changeTheam(ThemeMode.light);
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
                      "Light Theam",
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
              provider.changeTheam(ThemeMode.dark);
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
                      "Dark Theam",
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
