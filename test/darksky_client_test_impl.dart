// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

class DarkSkyWeatherTest extends DarkSkyWeatherBase {
  DarkSkyWeatherTest() : super("", language: Language.English, units: Units.US);

  @override
  Future<List<int>> _getImpl(String url) async {
    var testFileBytes = await new File('data/vienna.json').readAsBytes();
    return testFileBytes;
  }
}
