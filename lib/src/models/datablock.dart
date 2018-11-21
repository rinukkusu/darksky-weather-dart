// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

abstract class DataBlockBase {
  /// [optional] A human-readable summary of this data block.
  String summary;

  /**
   * [optional] A machine-readable text summary of this data block. (May take 
   * on the same values as the icon property of data points.)
   */
  String icon;
}

/**
 * A data block containing the weather conditions minute-by-minute for the next 
 * hour.
 */
@JsonSerializable()
class MinutelyDataBlock extends DataBlockBase {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<MinutelyDataPoint> data;

  MinutelyDataBlock();
  factory MinutelyDataBlock.fromJson(Map<String, dynamic> json) =>
      _$MinutelyDataBlockFromJson(json);
}

/**
 * A data block containing the weather conditions hour-by-hour for the next two 
 * days.
 */
@JsonSerializable()
class HourlyDataBlock extends DataBlockBase {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<HourlyDataPoint> data;

  HourlyDataBlock();
  factory HourlyDataBlock.fromJson(Map<String, dynamic> json) =>
      _$HourlyDataBlockFromJson(json);
}

/**
 * A data block containing the weather conditions day-by-day for the next week.
 */
@JsonSerializable()
class DailyDataBlock extends DataBlockBase {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<DailyDataPoint> data;

  DailyDataBlock();
  factory DailyDataBlock.fromJson(Map<String, dynamic> json) =>
      _$DailyDataBlockFromJson(json);
}
