import 'package:http/http.dart' as http;
import '../models/country.dart';
import '../models/travel.dart';
import '../models/location.dart';
import 'dart:convert';

class HttpHelper {
  // https://www.distance24.org/route.json?stops=Pune|Bengaluru
  //https://en.wikipedia.org/api/rest_v1/page/summary/Pune
  // final String authority = 'en.wikipedia.org';
  // String path = 'api/rest_v1/page/summary';
  final String authority = 'en.wikipedia.org';
  String path = 'api/rest_v1/page/summary';

  Future<Location> getLocation(String cityA) async {
    path = path + '/$cityA';
    // Map<String, dynamic> parameters = {'stops': cityA};
    Uri uri = Uri.https(authority, path);
    print(uri);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    // TravelData travel = TravelData.fromJson(data);
    Location location = Location.fromJson(data);
    return location;
  }

  Future<TravelData> getTravel(String cityA, String cityB) async {
    String stops = cityA + '|' + cityB;
    Map<String, dynamic> parameters = {'stops': stops};
    Uri uri = Uri.https(authority, path, parameters);
    print(uri);
    http.Response result = await http.get(uri);
    
    Map<String, dynamic> data = json.decode(result.body);
    TravelData travel = TravelData.fromJson(data);
    // Location location = Location.fromJson(data);
    return travel; 
  }

  // Future<List<Country>>fetchCountries()async{
    
  // }

}
