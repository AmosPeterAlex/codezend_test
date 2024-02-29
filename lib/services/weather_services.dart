import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  Future<Map<String, dynamic>> getWeather(String location) async {
    const apiKey = '3e4b84af4d4613a1ab22d0783379b134';
    final response = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric',
    ));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
