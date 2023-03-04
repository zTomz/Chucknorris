import 'package:chucknorris/chucknorris.dart';
import 'package:test/test.dart';

void main() {
  group('Test Chucknorris', () {
    test('getRandomJokes Test', () async {
      expect(await Chucknorris.getRandomJokes(count: 5), hasLength(5));
    });

    test('getJokesFromCategory Test', () async {
      expect(await Chucknorris.getJokesFromCategory('music' ,count: 5), hasLength(5));
    });

    test('getJokesFromQuery Test', () async {
      expect(await Chucknorris.getJokesFromQuery('music'), isNotEmpty);
    });
  });
}
