import 'dart:convert';

import 'package:chucknorris/model/joke.dart';
import 'package:http/http.dart';

/// The jokes api class
class Chucknorris {
  static Client client = Client();
  static List<String> categories = [
    "animal",
    "career",
    "celebrity",
    "dev",
    "explicit",
    "fashion",
    "food",
    "history",
    "money",
    "movie",
    "music",
    "political",
    "religion",
    "science",
    "sport",
    "travel",
  ];

  static Future<List<Joke>> getRandomJokes({int count = 1}) async {
    List<Joke> jokes = [];

    for (int i = 1; i <= count; i++) {
      final Response response = await client
          .get(Uri.parse('https://api.chucknorris.io/jokes/random'));

      if (response.statusCode == 200) {
        jokes.add(Joke.fromJson(jsonDecode(response.body)));
      } else {
        throw (response.statusCode);
      }
    }

    return jokes;
  }

  static Future<List<Joke>> getJokesFromCategory(String category,
      {int count = 1}) async {
    if (!categories.contains(category)) {
      throw ('Category $category is not in categories $categories');
    }

    List<Joke> jokes = [];

    for (int i = 1; i <= count; i++) {
      final Response response = await client.get(
        Uri.parse('https://api.chucknorris.io/jokes/random?category=$category'),
      );

      if (response.statusCode == 200) {
        jokes.add(Joke.fromJson(jsonDecode(response.body)));
      } else {
        throw (response.statusCode);
      }
    }

    return jokes;
  }

  static Future<List<Joke>> getJokesFromQuery(String query) async {
    if (query.isEmpty) {
      throw ("Query is empty");
    }

    List<Joke> jokes = [];

    final Response response =
        await client.get(Uri.parse('https://api.chucknorris.io/jokes/random'));

    if (response.statusCode == 200) {
      jokes.add(Joke.fromJson(jsonDecode(response.body)));
    } else {
      throw (response.statusCode);
    }

    return jokes;
  }
}
