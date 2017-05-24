part of darksky_weather;

class DarkSkyWeather extends DarkSkyWeatherBase {
  DarkSkyWeather(String apiToken) : super(apiToken);

  @override
  Future<List<int>> _getForecastImpl(double lat, double lon) async {
    var client = new http.Client();
    var response = await client.get(_getForecastUrl(lat, lon));
    return response.bodyBytes;
  }
}
