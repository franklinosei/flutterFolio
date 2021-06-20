import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/models/projects.dart';

class GetProjects {

  Future<List<Project>> fetchProjects() async {
    final response = await http
        .get(Uri.parse('https://api-port1.herokuapp.com/api/projects.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      // isLoaded = true;
      return compute(parseProject, response.body);
    } else {

      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load projects');
    }
  }



// A function that converts a response body into a List<Projects>.
  List<Project> parseProject(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Project>((json) => Project.fromJson(json)).toList();
  }

}
