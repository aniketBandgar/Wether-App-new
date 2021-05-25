import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import './location.dart';

Future<void> weatherData() async {
  Position position = await getLocation();
  final url = Uri.parse(
      'http://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=594c9325fa282800497380a5391060f6');
  final fetchData = await http.get(url);
  print(json.decode(fetchData.body));
}

Future<void> weatherDataByCityName(String city) async {
  final url = Uri.parse(
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=594c9325fa282800497380a5391060f6}');
  final fetchData = await http.get(url);
  print(json.decode(fetchData.body));
}
