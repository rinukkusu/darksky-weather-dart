// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

abstract class DarkSkyWeatherBase {
  final String _apiToken;
  final Language language;
  final Units units;

  static const String _baseUrl = 'https://api.darksky.net';
  String _getForecastUrl(
          double lat, double lon, String excludes, String lang, String units) =>
      '$_baseUrl/forecast/$_apiToken/$lat,$lon' +
      '?exclude=$excludes' +
      '&lang=$lang' +
      '&units=$units';

  DarkSkyWeatherBase(this._apiToken,
      {this.language = Language.English, this.units = Units.US});

  Future<Forecast> getForecast(double lat, double lon,
      {List<Exclude> excludes = const []}) async {
    var rExcludes = _renderExcludes(excludes);
    var rLanguage = LanguageHelper.get(language);
    var rUnits = getUnitName(units);

    var url = _getForecastUrl(lat, lon, rExcludes, rLanguage, rUnits);
    var bytes = await _getImpl(url);

    var decoded = UTF8.decode(bytes);
    var forecast = ForecastMapper.fromJson(decoded);

    return forecast;
  }

  String _renderExcludes(List<Exclude> list) {
    return list.map(getExcludeName).join(',');
  }

  Future<List<int>> _getImpl(String url);
}
