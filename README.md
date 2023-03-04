### API-based joke retrieval package with simple request methods. Add some humor to your project with ease.

## Features

- Get random jokes
```dart
await Chucknorris.getRandomJokes(count: 5);
```
- Get jokes from categories
```dart
await Chucknorris.getJokesFromCategory('movie', count: 5);
```
- Get jokes from a query
```dart
await Chucknorris.getJokesFromQuery('music');
```

## Categories

- animal
- career
- celebrity
- dev
- explicit
- fashion
- food
- history
- money
- movie
- music
- political
- religion
- science
- sport
- travel

## Usage

```dart
final randomJokes = await Chucknorris.getRandomJokes(count: 5);
final categoryJokes =
      await Chucknorris.getJokesFromCategory('movie', count: 5);
final queryJokes = await Chucknorris.getJokesFromQuery('music');
```

## Credits

Credits to the free Chucknorris api:
<br>
https://api.chucknorris.io/