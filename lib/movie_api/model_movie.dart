import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class MovieModel extends ChangeNotifier {
  List<dynamic> movieData = [];

  Map<String, String> get headers => {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNDAxN2UzY2RiODUyZDhlZDJkZTc4ODc0MzQyOWFkMCIsInN1YiI6IjY1Y2I5NGE2MDA1MDhhMDE3YjQyYWY1NiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MHA5XmkPjOu9g49gAtWUu1nMY18OcDQepaR801z0EiE",
        "accept": "application/json"
      };

  void apiCallingMovie() async {
    Response response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1'),
        headers: headers);

    List<dynamic> allRequiredData = json.decode(response.body)['results'];
    movieData.addAll(allRequiredData);
    notifyListeners();
  }
}
