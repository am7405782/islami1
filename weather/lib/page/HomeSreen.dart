import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/provider.dart';

import '../model/weatherModel.dart';
import 'SearchPage.dart';

class HomeSreen extends StatefulWidget {
   HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  void updateUi() {
    setState(() {});
  }
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context,listen: false).weatherData;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WeatherApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,


          ),
        ),
        actions: [
          IconButton(onPressed:
              ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SearchPage(
                updateUi: updateUi,
              );

            },),);

          }, icon:
          Icon(
            Icons.search,
          ),
          ),

        ],

      ),
      body:Provider.of<WeatherProvider>(context).weatherData ==null
          ?Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ) :Container(
        color: Colors.orange,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),

            Text(
              "Cairo",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "22/5/2020",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Image.asset("assets/images/clear.png"),
                Text(
                  "25",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text('maxTemp :30'),
                    Text('minTemp : 30'),
                  ],
                ),



              ],
            ),
            Spacer(),
            Text(
              "clear",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(
              flex: 5,
            ),

          ],
        ) ,
      ),
    );
  }
}
