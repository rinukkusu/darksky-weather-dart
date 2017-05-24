// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

enum Exclude { Currently, Minutely, Hourly, Daily, Alerts, Flags }

String getExcludeName(Exclude exclude) {
  return exclude
      .toString()
      .substring(exclude.toString().indexOf('.') + 1)
      .toLowerCase();
}
