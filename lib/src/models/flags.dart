// Copyright (c) 2020, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

@JsonSerializable(createToJson: false)
class Flags {
  /// [optional] The presence of this property indicates that the Dark Sky data
  /// source supports the given location, but a temporary error (such as a 
  /// radar station being down for maintenance) has made the data unavailable.
  @JsonKey(name: 'darksky-unavailable')
  dynamic darkskyUnavailable;

  /// [required] The distance to the nearest weather station that contributed
  /// data to this response. Note, however, that many other stations may have 
  /// also been used; this value is primarily for debugging purposes. This 
  /// property's value is in miles (if US units are selected) or kilometers 
  /// (if SI units are selected).
  @JsonKey(name: 'nearest-station')
  double nearestStation;

  /// [required] This property contains an array of IDs for each data source 
  /// utilized in servicing this request.
  List<String> sources;

  /// [required] Indicates the units which were used for the data in this 
  /// request.
  String units;

  Flags();
  factory Flags.fromJson(Map<String, dynamic> json) =>
      _$FlagsFromJson(json);
}