// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

abstract class DataPointBase {
  /// [optional] The percentage of sky occluded by clouds, between 0 and 1,
  /// inclusive.
  double cloudCover;

  /// [optional] The dew point in degrees Fahrenheit.
  double dewPoint;

  /// [optional] The relative humidity, between 0 and 1, inclusive.
  double humidity;

  /// [optional] A machine-readable text summary of this data point, suitable 
  /// for selecting an icon for display. If defined, this property will have one 
  /// of the following values: 
  /// 
  ///     clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, 
  ///     partly-cloudy-day, or partly-cloudy-night. 
  /// 
  /// Developers should ensure that a sensible default is defined, as 
  /// additional values, such as hail, thunderstorm, or tornado, may be defined 
  /// in the future.
  String icon;

  /// [optional] The columnar density of total atmospheric ozone at the given
  /// time in Dobson units.
  double ozone;

  /// [optional] The intensity (in inches of liquid water per hour) of 
  /// precipitation occurring at the given time. This value is conditional on 
  /// probability (that is, assuming any precipitation occurs at all) for 
  /// minutely data points, and unconditional otherwise.
  double precipIntensity;

  /// [optional] The probability of precipitation occurring, between 0 and 1, 
  /// inclusive.
  double precipProbability;

  /// [optional] The type of precipitation occurring at the given time. If 
  /// defined, this property will have one of the following values: 
  /// 
  ///     "rain", "snow", or "sleet" (which refers to each of freezing rain, 
  ///     ice pellets, and “wintery mix”). 
  /// 
  /// (If precipIntensity is zero, then this property will not be defined.)
  String precipType;

  /// [optional] The sea-level air pressure in millibars.
  double pressure;

  /// [optional] A human-readable text summary of this data point. (This property 
  /// has millions of possible values, so don’t use it for automated purposes: 
  /// use the icon property, instead!)
  String summary;

  /// [required] The UNIX time at which this data point begins. minutely data 
  /// point are always aligned to the top of the minute, hourly data point 
  /// objects to the top of the hour, and daily data point objects to midnight 
  /// of the day, all according to the local time zone.
  int time;

  /// [optional] The average visibility in miles, capped at 10 miles.
  double visibility;

  /// [optional] The direction that the wind is coming from in degrees, with 
  /// true north at 0° and progressing clockwise. (If windSpeed is zero, then 
  /// this value will not be defined.)
  double windBearing;

  /// [optional] The wind gust speed in miles per hour.
  double windGust;
  
  /// [optional] The wind speed in miles per hour.
  double windSpeed;
}

/// A data point containing the current weather conditions at the requested 
/// location.
@JsonSerializable(createToJson: false)
class CurrentlyDataPoint extends DataPointBase {
  /// [optional] The approximate direction of the nearest storm in degrees, 
  /// with true north at 0° and progressing clockwise. (If nearestStormDistance 
  /// is zero, then this value will not be defined.)
  double nearestStormBearing;

  /// [optional] The approximate distance to the nearest storm in miles. (A
  /// storm distance of 0 doesn’t necessarily refer to a storm at the requested
  /// location, but rather a storm in the vicinity of that location.)
  double nearestStormDistance;

  /// [optional] The air temperature in degrees Fahrenheit.
  double temperature;

  CurrentlyDataPoint();
  factory CurrentlyDataPoint.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyDataPointFromJson(json);
}

/// A data point containing the weather conditions minute-by-minute for the next 
/// hour.
@JsonSerializable(createToJson: false)
class MinutelyDataPoint extends DataPointBase {
  /// [optional] The apparent (or “feels like”) temperature in degrees 
  /// Fahrenheit.
  double apparentTemperature;

  MinutelyDataPoint();
  factory MinutelyDataPoint.fromJson(Map<String, dynamic> json) =>
      _$MinutelyDataPointFromJson(json);
}

/// A data point containing the weather conditions hour-by-hour for the next two 
/// days.
@JsonSerializable(createToJson: false)
class HourlyDataPoint extends DataPointBase {
  /// [optional] The apparent (or “feels like”) temperature in degrees 
  /// Fahrenheit.
  double apparentTemperature;

  /// [optional] The amount of snowfall accumulation expected to occur, in
  /// inches. (If no snowfall is expected, this property will not be defined.)
  double precipAccumulation;

  /// [optional] The air temperature in degrees Fahrenheit.
  double temperature;

  HourlyDataPoint();
  factory HourlyDataPoint.fromJson(Map<String, dynamic> json) =>
      _$HourlyDataPointFromJson(json);
}

/// A data point containing the weather conditions day-by-day for the next week.
@JsonSerializable(createToJson: false)
class DailyDataPoint extends DataPointBase {
  /// [optional] The maximum value of apparentTemperature during a given day.
  double apparentTemperatureMax;

  /// [optional] The UNIX time of when apparentTemperatureMax occurs during a 
  /// given day.
  int apparentTemperatureMaxTime;

  /// [optional] The minimum value of apparentTemperature during a given day.
  double apparentTemperatureMin;

  /// [optional] The UNIX time of when apparentTemperatureMin occurs during a 
  /// given day.
  int apparentTemperatureMinTime;

  /// [optional] The fractional part of the lunation number during the given
  /// day:
  ///     a value of 0 corresponds to a new moon,
  ///     0.25 to a first quarter moon,
  ///     0.5 to a full moon,
  ///     and 0.75 to a last quarter moon.
  ///
  /// (The ranges in between these represent waxing crescent, waxing gibbous,
  /// waning gibbous, and waning crescent moons, respectively.)
  double moonPhase;

  /// [optional] The amount of snowfall accumulation expected to occur, in
  /// inches. (If no snowfall is expected, this property will not be defined.)
  double precipAccumulation;

  /// [optional] The maximum value of precipIntensity during a given day.
  double precipIntensityMax;

  /// [optional] The UNIX time of when precipIntensityMax occurs during a given 
  /// day.
  int precipIntensityMaxTime;

  /// [optional] The UNIX time of when the sun will rise during a given day.
  int sunriseTime;

  /// [optional] The UNIX time of when the sun will set during a given day.
  int sunsetTime;

  /// [optional] The air temperature in degrees Fahrenheit.
  double temperature;

  /// [optional] The maximum value of temperature during a given day.
  double temperatureMax;

  /// [optional] The UNIX time of when temperatureMax occurs during a given day.
  int temperatureMaxTime;

  /// [optional] The minimum value of temperature during a given day.
  double temperatureMin;

  /// [optional] The UNIX time of when temperatureMin occurs during a given day.
  int temperatureMinTime;
  
  /// [optional] The time at which the maximum wind gust speed occurs during the day.
  int windGustTime;

  DailyDataPoint();
  factory DailyDataPoint.fromJson(Map<String, dynamic> json) =>
      _$DailyDataPointFromJson(json);
}
