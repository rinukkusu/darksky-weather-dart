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

  String _getTimeMachineForecastUrl(double lat, double lon, DateTime time,
      String excludes, String lang, String units) {
    String timeInSeconds =
        (time.millisecondsSinceEpoch / 1000).round().toString();
    return '$_baseUrl/forecast/$_apiToken/$lat,$lon,$timeInSeconds' +
        '?exclude=$excludes' +
        '&lang=$lang' +
        '&units=$units';
  }

  DarkSkyWeatherBase(this._apiToken,
      {this.language = Language.English, this.units = Units.US});

  Future<Forecast> getForecast(double lat, double lon,
      {List<Exclude> excludes = const []}) async {
    var rExcludes = _renderExcludes(excludes);
    var rLanguage = LanguageHelper.get(language);
    var rUnits = getUnitName(units);

    var url = _getForecastUrl(lat, lon, rExcludes, rLanguage, rUnits);
    return _getForecastResults(url);
  }

  Future<Forecast> getTimeMachineForecast(double lat, double lon, DateTime time,
      {List<Exclude> excludes = const []}) async {
    var rExcludes = _renderExcludes(excludes);
    var rLanguage = LanguageHelper.get(language);
    var rUnits = getUnitName(units);

    var url = _getTimeMachineForecastUrl(
        lat, lon, time, rExcludes, rLanguage, rUnits);

    return _getForecastResults(url);
  }

  Future<Forecast> _getForecastResults(String url) async {
    var bytes = await _getImpl(url);

    var decoded = utf8.decode(bytes);
    var map = json.decode(decoded);
    var forecast = new Forecast.fromJson(map);

    return forecast;
  }

  String _renderExcludes(List<Exclude> list) {
    return list.map(getExcludeName).join(',');
  }

  Future<List<int>> _getImpl(String url);
}
