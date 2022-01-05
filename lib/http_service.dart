import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  Future<List<dynamic>> getUsers() async {
    String endPointUrl = "https://jsonplaceholder.typicode.com/users";
    http.Response response = await http.get(Uri.parse(endPointUrl));
    dynamic decodedJson = jsonDecode(response.body);
    return decodedJson.map((e) => e["name"]).toList();
  }
}
