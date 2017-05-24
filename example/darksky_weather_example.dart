// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:darksky_weather/darksky_weather_io.dart';

Future<Null> main() async {
  var darksky = new DarkSkyWeather("dfa7520153ef8846079b693c901095c8");
  var forecast = await darksky.getForecast(48.21, 16.363,
      language: Language.German, units: Units.SI);

  print(forecast.currently.temperature);
}
