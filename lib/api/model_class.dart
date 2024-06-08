import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class ModelInterface extends ChangeNotifier {
  List<dynamic> responseCall = [];

  Future<void> apiCallingResponse() async {
    Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
    List<dynamic> data = json.decode(response.body);
    print(data[0]['title']);

    responseCall.addAll(data);
    notifyListeners();
  }
}
