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
        : DailyDataBlock.fromJson(json['daily'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'currently': instance.currently,
      'minutely': instance.minutely,
      'hourly': instance.hourly,
      'daily': instance.daily
    };

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
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..nearestStormBearing = (json['nearestStormBearing'] as num)?.toDouble()
    ..nearestStormDistance = (json['nearestStormDistance'] as num)?.toDouble()
    ..temperature = (json['temperature'] as num)?.toDouble();
}

Map<String, dynamic> _$CurrentlyDataPointToJson(CurrentlyDataPoint instance) =>
    <String, dynamic>{
      'cloudCover': instance.cloudCover,
      'dewPoint': instance.dewPoint,
      'humidity': instance.humidity,
      'icon': instance.icon,
      'ozone': instance.ozone,
      'precipIntensity': instance.precipIntensity,
      'precipProbability': instance.precipProbability,
      'precipType': instance.precipType,
      'pressure': instance.pressure,
      'summary': instance.summary,
      'time': instance.time,
      'visibility': instance.visibility,
      'windBearing': instance.windBearing,
      'windSpeed': instance.windSpeed,
      'nearestStormBearing': instance.nearestStormBearing,
      'nearestStormDistance': instance.nearestStormDistance,
      'temperature': instance.temperature
    };

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
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..apparentTemperature = (json['apparentTemperature'] as num)?.toDouble();
}

Map<String, dynamic> _$MinutelyDataPointToJson(MinutelyDataPoint instance) =>
    <String, dynamic>{
      'cloudCover': instance.cloudCover,
      'dewPoint': instance.dewPoint,
      'humidity': instance.humidity,
      'icon': instance.icon,
      'ozone': instance.ozone,
      'precipIntensity': instance.precipIntensity,
      'precipProbability': instance.precipProbability,
      'precipType': instance.precipType,
      'pressure': instance.pressure,
      'summary': instance.summary,
      'time': instance.time,
      'visibility': instance.visibility,
      'windBearing': instance.windBearing,
      'windSpeed': instance.windSpeed,
      'apparentTemperature': instance.apparentTemperature
    };

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
    ..windSpeed = (json['windSpeed'] as num)?.toDouble()
    ..apparentTemperature = (json['apparentTemperature'] as num)?.toDouble()
    ..precipAccumulation = (json['precipAccumulation'] as num)?.toDouble()
    ..temperature = (json['temperature'] as num)?.toDouble();
}

Map<String, dynamic> _$HourlyDataPointToJson(HourlyDataPoint instance) =>
    <String, dynamic>{
      'cloudCover': instance.cloudCover,
      'dewPoint': instance.dewPoint,
      'humidity': instance.humidity,
      'icon': instance.icon,
      'ozone': instance.ozone,
      'precipIntensity': instance.precipIntensity,
      'precipProbability': instance.precipProbability,
      'precipType': instance.precipType,
      'pressure': instance.pressure,
      'summary': instance.summary,
      'time': instance.time,
      'visibility': instance.visibility,
      'windBearing': instance.windBearing,
      'windSpeed': instance.windSpeed,
      'apparentTemperature': instance.apparentTemperature,
      'precipAccumulation': instance.precipAccumulation,
      'temperature': instance.temperature
    };

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
    ..temperatureMinTime = json['temperatureMinTime'] as int;
}

Map<String, dynamic> _$DailyDataPointToJson(DailyDataPoint instance) =>
    <String, dynamic>{
      'cloudCover': instance.cloudCover,
      'dewPoint': instance.dewPoint,
      'humidity': instance.humidity,
      'icon': instance.icon,
      'ozone': instance.ozone,
      'precipIntensity': instance.precipIntensity,
      'precipProbability': instance.precipProbability,
      'precipType': instance.precipType,
      'pressure': instance.pressure,
      'summary': instance.summary,
      'time': instance.time,
      'visibility': instance.visibility,
      'windBearing': instance.windBearing,
      'windSpeed': instance.windSpeed,
      'apparentTemperatureMax': instance.apparentTemperatureMax,
      'apparentTemperatureMaxTime': instance.apparentTemperatureMaxTime,
      'apparentTemperatureMin': instance.apparentTemperatureMin,
      'apparentTemperatureMinTime': instance.apparentTemperatureMinTime,
      'moonPhase': instance.moonPhase,
      'precipAccumulation': instance.precipAccumulation,
      'precipIntensityMax': instance.precipIntensityMax,
      'precipIntensityMaxTime': instance.precipIntensityMaxTime,
      'sunriseTime': instance.sunriseTime,
      'sunsetTime': instance.sunsetTime,
      'temperature': instance.temperature,
      'temperatureMax': instance.temperatureMax,
      'temperatureMaxTime': instance.temperatureMaxTime,
      'temperatureMin': instance.temperatureMin,
      'temperatureMinTime': instance.temperatureMinTime
    };

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

Map<String, dynamic> _$MinutelyDataBlockToJson(MinutelyDataBlock instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'icon': instance.icon,
      'data': instance.data
    };

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

Map<String, dynamic> _$HourlyDataBlockToJson(HourlyDataBlock instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'icon': instance.icon,
      'data': instance.data
    };

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

Map<String, dynamic> _$DailyDataBlockToJson(DailyDataBlock instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'icon': instance.icon,
      'data': instance.data
    };
