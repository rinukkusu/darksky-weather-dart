// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

abstract class DarkSkyWeatherBase {
  final String _apiToken;

  static const String _baseUrl = 'https://api.darksky.net';
  String _getForecastUrl(double lat, double lon) =>
      '$_baseUrl/$_apiToken/$lat,$lon';

  DarkSkyWeatherBase(this._apiToken);

  Future<Forecast> getForecast(double lat, double lon) async {
    var bytes = await _getForecastImpl(lat, lon);

    var decoded = UTF8.decode(bytes);
    var forecast = ForecastMapper.fromJson(decoded);

    return forecast;
  }

  Future<List<int>> _getForecastImpl(double lat, double lon);
}
