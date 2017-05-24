// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

enum Units {
  /// Automatically select units based on geographic location.
  Auto,

  /// Same as [Units.Si], except that [windSpeed] is in kilometers per hour.
  CA,

  /**
   * Same as [Units.Si], except that [nearestStormDistance] and [visibility] 
   * are in miles and [windSpeed] is in miles per hour.
   */
  UK2,

  /// Imperial units (the default).
  US,

  /// SI units.
  SI
}

String getUnitName(Units units) {
  return units
      .toString()
      .substring(units.toString().indexOf('.') + 1)
      .toLowerCase();
}
