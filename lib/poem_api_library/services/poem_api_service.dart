import 'dart:developer';

import 'package:exceptional_memory/poem_api_library/api/poem_api_constants.dart';
import 'package:exceptional_memory/poem_api_library/models/api_poem.dart';
import 'package:http/http.dart' as http;

class PoemApiService {
  Future<List<APIPoem>?> getRandomPoems(int numOfPoems) async {
    try {
      var url = Uri.parse(PoemAPIConstants.baseUrl +
          PoemAPIConstants.randomEndpoint +
          "$numOfPoems");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<APIPoem> _model = poemFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
      throw Exception("Failed to load list of random poems");
    }
  }

  Future<APIPoem> getRandomPoem() async {
    try {
      var url =
          Uri.parse(PoemAPIConstants.baseUrl + PoemAPIConstants.randomEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        APIPoem _model = poemFromJson(response.body)[0];
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception("Failed to load random poem");
  }
}
