// GENERATED CODE - DO NOT MODIFY BY HAND

part of darksky_weather;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return Forecast()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..longitude = (json['longitude'] as num)?.toDouble()
    ..timezone = json['timezone'] as String
    ..currently = json['currently'] == null
        ? null
        : CurrentlyDataPoint.fromJson(json['currently'] as Map<String, dynamic>)
    ..minutely = json['minutely'] == null
        ? null
        : MinutelyDataBlock.fromJson(json['minutely'] as Map<String, dynamic>)
    ..hourly = json['hourly'] == null
        ? null
        : HourlyDataBlock.fromJson(json['hourly'] as Map<String, dynamic>)
    ..daily = json['daily'] == null
        ? null
        : DailyDataBlock.fromJson(json['daily'] as Map<String, dynamic>)
    ..alerts = (json['alerts'] as List)
        ?.map(
            (e) => e == null ? null : Alert.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..flags = json['flags'] == null
        ? null
        : Flags.fromJson(json['flags'] as Map<String, dynamic>);
}

CurrentlyDataPoint _$CurrentlyDataPointFromJson(Map<String, dynamic> json) {
  return CurrentlyDataPoint()
    ..cloudCover = (json['cloudCover'] as num)?.toDouble()
    ..dewPoint = (json['dewPoint'] as num)?.toDouble()
    ..humidity = (json['humidity'] as num)?.toDouble()
    ..icon = json['icon'] as String
    ..ozone = (json['ozone'] as num)?.toDouble()
    ..precipIntensity = (json['precipIntensity'] as num)?.toDouble()
    ..precipProbability = (json['precipProbability'] as num)?.toDouble()
    ..precipType = json['precipType'] as String
    ..pressure = (json['pressure'] as num)?.toDouble()
    ..summary = json['summary'] as String
    ..time = json['time'] as int
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..windBearing = (json['windBearing'] as num)?.toDouble()
    ..windGust = (json['windGust'] as num)?.toDouble()
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..nearestStormBearing = (json['nearestStormBearing'] as num)?.toDouble()
    ..nearestStormDistance = (json['nearestStormDistance'] as num)?.toDouble()
    ..temperature = (json['temperature'] as num)?.toDouble();
}

MinutelyDataPoint _$MinutelyDataPointFromJson(Map<String, dynamic> json) {
  return MinutelyDataPoint()
    ..cloudCover = (json['cloudCover'] as num)?.toDouble()
    ..dewPoint = (json['dewPoint'] as num)?.toDouble()
    ..humidity = (json['humidity'] as num)?.toDouble()
    ..icon = json['icon'] as String
    ..ozone = (json['ozone'] as num)?.toDouble()
    ..precipIntensity = (json['precipIntensity'] as num)?.toDouble()
    ..precipProbability = (json['precipProbability'] as num)?.toDouble()
    ..precipType = json['precipType'] as String
    ..pressure = (json['pressure'] as num)?.toDouble()
    ..summary = json['summary'] as String
    ..time = json['time'] as int
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..windBearing = (json['windBearing'] as num)?.toDouble()
    ..windGust = (json['windGust'] as num)?.toDouble()
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..apparentTemperature = (json['apparentTemperature'] as num)?.toDouble();
}

HourlyDataPoint _$HourlyDataPointFromJson(Map<String, dynamic> json) {
  return HourlyDataPoint()
    ..cloudCover = (json['cloudCover'] as num)?.toDouble()
    ..dewPoint = (json['dewPoint'] as num)?.toDouble()
    ..humidity = (json['humidity'] as num)?.toDouble()
    ..icon = json['icon'] as String
    ..ozone = (json['ozone'] as num)?.toDouble()
    ..precipIntensity = (json['precipIntensity'] as num)?.toDouble()
    ..precipProbability = (json['precipProbability'] as num)?.toDouble()
    ..precipType = json['precipType'] as String
    ..pressure = (json['pressure'] as num)?.toDouble()
    ..summary = json['summary'] as String
    ..time = json['time'] as int
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..windBearing = (json['windBearing'] as num)?.toDouble()
    ..windGust = (json['windGust'] as num)?.toDouble()
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..apparentTemperature = (json['apparentTemperature'] as num)?.toDouble()
    ..precipAccumulation = (json['precipAccumulation'] as num)?.toDouble()
    ..temperature = (json['temperature'] as num)?.toDouble();
}

DailyDataPoint _$DailyDataPointFromJson(Map<String, dynamic> json) {
  return DailyDataPoint()
    ..cloudCover = (json['cloudCover'] as num)?.toDouble()
    ..dewPoint = (json['dewPoint'] as num)?.toDouble()
    ..humidity = (json['humidity'] as num)?.toDouble()
    ..icon = json['icon'] as String
    ..ozone = (json['ozone'] as num)?.toDouble()
    ..precipIntensity = (json['precipIntensity'] as num)?.toDouble()
    ..precipProbability = (json['precipProbability'] as num)?.toDouble()
    ..precipType = json['precipType'] as String
    ..pressure = (json['pressure'] as num)?.toDouble()
    ..summary = json['summary'] as String
    ..time = json['time'] as int
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..windBearing = (json['windBearing'] as num)?.toDouble()
    ..windGust = (json['windGust'] as num)?.toDouble()
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..apparentTemperatureMax =
        (json['apparentTemperatureMax'] as num)?.toDouble()
    ..apparentTemperatureMaxTime = json['apparentTemperatureMaxTime'] as int
    ..apparentTemperatureMin =
        (json['apparentTemperatureMin'] as num)?.toDouble()
    ..apparentTemperatureMinTime = json['apparentTemperatureMinTime'] as int
    ..moonPhase = (json['moonPhase'] as num)?.toDouble()
    ..precipAccumulation = (json['precipAccumulation'] as num)?.toDouble()
    ..precipIntensityMax = (json['precipIntensityMax'] as num)?.toDouble()
    ..precipIntensityMaxTime = json['precipIntensityMaxTime'] as int
    ..sunriseTime = json['sunriseTime'] as int
    ..sunsetTime = json['sunsetTime'] as int
    ..temperature = (json['temperature'] as num)?.toDouble()
    ..temperatureMax = (json['temperatureMax'] as num)?.toDouble()
    ..temperatureMaxTime = json['temperatureMaxTime'] as int
    ..temperatureMin = (json['temperatureMin'] as num)?.toDouble()
    ..temperatureMinTime = json['temperatureMinTime'] as int
    ..windGustTime = json['windGustTime'] as int;
}

MinutelyDataBlock _$MinutelyDataBlockFromJson(Map<String, dynamic> json) {
  return MinutelyDataBlock()
    ..summary = json['summary'] as String
    ..icon = json['icon'] as String
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : MinutelyDataPoint.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

HourlyDataBlock _$HourlyDataBlockFromJson(Map<String, dynamic> json) {
  return HourlyDataBlock()
    ..summary = json['summary'] as String
    ..icon = json['icon'] as String
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : HourlyDataPoint.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

DailyDataBlock _$DailyDataBlockFromJson(Map<String, dynamic> json) {
  return DailyDataBlock()
    ..summary = json['summary'] as String
    ..icon = json['icon'] as String
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : DailyDataPoint.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return Alert()
    ..description = json['description'] as String
    ..expires = json['expires'] as int
    ..regions = (json['regions'] as List)?.map((e) => e as String)?.toList()
    ..severity = json['severity'] as String
    ..time = json['time'] as int
    ..title = json['title'] as String
    ..uri = json['uri'] as String;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return Flags()
    ..darkskyUnavailable = json['darksky-unavailable']
    ..nearestStation = (json['nearest-station'] as num)?.toDouble()
    ..sources = (json['sources'] as List)?.map((e) => e as String)?.toList()
    ..units = json['units'] as String;
}
