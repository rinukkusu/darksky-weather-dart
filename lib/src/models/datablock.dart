part of darksky_weather;

@JsonClass()
class DataBlockBase {
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
@JsonClass() 
class MinutelyDataBlock {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<MinutelyDataPoint> data;
}

/**
 * A data block containing the weather conditions hour-by-hour for the next two 
 * days.
 */
@JsonClass() 
class HourlyDataBlock {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<HourlyDataPoint> data;
}


/**
 * A data block containing the weather conditions day-by-day for the next week.
 */
@JsonClass() 
class DailyDataBlock {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<DailyDataPoint> data;
}