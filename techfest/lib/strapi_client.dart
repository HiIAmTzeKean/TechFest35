import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class StrapiClient {
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
    //'Authorization':
    //'Bearer 6708d531c667959b333e5a07b3a196eb2bfef2777be45f5a00540d68b665d756197d6e797a4804a2ab0e8bd3fb4737d6fea86ab46685a674977947816bd23fd34e20f9fe34d3256242f57a51c4281e87e24466ea75e2aeb267d9b3976a0b28bd06478fe56917734ff3013c1e494ed9687ccbd9b4dbf5555d9519dc6a2a96b95f'
  };

  static fetchData(path) async {
    var url = Uri.http("localhost:1337", '/api/jobs');
    var response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      print(response.body);
    }
  }

  static postData(path) async {
    var url = Uri.http("localhost:1337", "/api/auth/local");
    var body = convert.jsonEncode(
        {'identifier': 'chaitanya@strapi.com', 'password': 'chaitanya'});
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      print(response.body);
    }
    print(response.statusCode);
  }
}

void main(List<String> arguments) async {
  //StrapiClient.fetchData("localhost:1337/api/jobs");
  StrapiClient.postData("path");
}
