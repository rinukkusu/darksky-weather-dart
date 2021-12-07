// Copyright (c) 2020, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

@JsonSerializable(createToJson: false)
class Alert {
  /// [required] A detailed description of the alert.
  String? description;

  /// [required] The UNIX time at which the alert will expire.
  int? expires;

  /// [required] An array of strings representing the names of the regions 
  /// covered by this weather alert.
  List<String>? regions;

  /// [required] The severity of the weather alert. 
  /// Will take one of the following values: 
  ///   "advisory" (an individual should be aware of potentially 
  ///               severe weather)
  ///   "watch" (an individual should prepare for potentially severe weather)
  ///   "warning" (an individual should take immediate action to protect 
  ///              themselves and others from potentially severe weather).
  String? severity;

  /// [required] The UNIX time at which the alert was issued.
  int? time;
  
  /// [required] A brief description of the alert.
  String? title;

  /// [required] An HTTP(S) URI that one may refer to for detailed information
  /// about the alert.
  String? uri;

  Alert();
  factory Alert.fromJson(Map<String, dynamic> json) =>
      _$AlertFromJson(json);
}