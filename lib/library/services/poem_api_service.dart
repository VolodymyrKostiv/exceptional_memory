import 'dart:developer';

import 'package:exceptional_memory/library/api/poem_api_constants.dart';
import 'package:exceptional_memory/library/models/poem_model.dart';
import 'package:http/http.dart' as http;

class PoemApiService {
  Future<List<Poem>?> getRandomPoems(int numOfPoems) async {
    try {
      var url = Uri.parse(PoemAPIConstants.baseUrl +
          PoemAPIConstants.randomEndpoint +
          "$numOfPoems");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Poem> _model = poemFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
      throw Exception("Failed to load list of random poems");
    }
  }

  Future<Poem> getRandomPoem() async {
    try {
      var url =
          Uri.parse(PoemAPIConstants.baseUrl + PoemAPIConstants.randomEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        Poem _model = poemFromJson(response.body)[0];
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception("Failed to load random poem");
  }
}
