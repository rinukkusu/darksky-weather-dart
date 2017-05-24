# darksky_weather

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

[tracker]: https://github.com/rinukkusu/darksky-weather-dart/issues
