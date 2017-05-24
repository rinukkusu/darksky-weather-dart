// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:darksky_weather/darksky_weather_io.dart';

Future<Null> main() async {
  var darksky = new DarkSkyWeather("API_KEY_HERE",
      language: Language.German, units: Units.SI);
  var forecast = await darksky.getForecast(48.21, 16.363);

  print(forecast.currently.temperature);
  print(forecast.currently.summary);
}
