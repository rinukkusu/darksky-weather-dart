// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';

import 'darksky_weather_test_impl.dart';

void main() {
  group('A group of tests', () {
    DarkSkyWeatherTest darkskyApi;

    setUp(() {
      darkskyApi = new DarkSkyWeatherTest();
    });

    test('Data test', () {
      var forecast = darkskyApi.getForecast(.0, .0);
      expect(forecast, isNotNull);
    });
  });
}
