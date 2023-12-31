import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/weatherModel.dart';
class WeatherService {

  String baseUrl="http://api.weatherapi.com/v1";
  String apikey="ce3fc55c816844ab80e234320230208";
  Future<WeatherModel>  getWeather({required String cityName}) async {
    Uri url= Uri.parse(
        "$baseUrl/forecast.json?key=$apikey&q=$cityName&days=7"
    );
    http.Response response= await http.get(url);
   Map<String,dynamic> data=jsonDecode(response.body);
   print("$data");
    var jsonData = data['forecast']['forecastday'][0]['day'];
    WeatherModel weather = WeatherModel.fromJson(data);


    return weather;


  }
}





