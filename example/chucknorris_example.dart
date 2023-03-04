import 'package:chucknorris/chucknorris.dart';

void main() async {
  final randomJokes = await Chucknorris.getRandomJokes(count: 5);
  final categoryJokes =
      await Chucknorris.getJokesFromCategory('movie', count: 5);
  final queryJokes = await Chucknorris.getJokesFromQuery('music');
}
