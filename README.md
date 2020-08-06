# darksky_weather [![Pub](https://img.shields.io/pub/v/darksky_weather.svg)](https://pub.dartlang.org/packages/darksky_weather) ![Dart CI](https://github.com/rinukkusu/darksky-weather-dart/workflows/Dart%20CI/badge.svg)

A dart library for interfacing with the Dark Sky Weather API.

## Usage

A simple usage example:

```dart
import 'dart:async';
import 'package:darksky_weather/darksky_weather_io.dart';

Future<Null> main() async {
  var darksky = new DarkSkyWeather("API_KEY_HERE",
      language: Language.German, units: Units.SI);
  var forecast = await darksky.getForecast(48.21, 16.363);

  print(forecast.currently.temperature);
  print(forecast.currently.summary);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

## Development

### Generating JSON Serializers
Run `pub run build_runner build` to generate JSON serializers via [json_serializable][].

Run `pub run build_runner watch` to continuously rebuild serializers in the background when files are updated.

### Running tests
Run `pub run test` to run all of the tests in `test/darksky_weather_test.dart`.

### Running example code
Run `pub run example/example` to run the example code. You'll need to modify `example/example.dart` to use your Dark Sky ApiKey.


[tracker]: https://github.com/rinukkusu/darksky-weather-dart/issues
[json_serializable]: https://pub.dartlang.org/packages/json_serializable
