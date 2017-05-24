// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

class DarkSkyWeather extends DarkSkyWeatherBase {
  DarkSkyWeather(String apiToken,
      {Language language = Language.English, Units units = Units.US})
      : super(apiToken, language: language, units: units);

  @override
  Future<List<int>> _getImpl(String url) async {
    var client = new http.BrowserClient();
    var response = await client.get(url);
    return response.bodyBytes;
  }
}
