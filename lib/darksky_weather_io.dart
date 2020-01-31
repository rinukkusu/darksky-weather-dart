// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Dark Sky Weather API library
library darksky_weather;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'darksky_weather_io.g.dart';

part 'src/darksky_weather_base.dart';
part 'src/darksky_weather_io.dart';
part 'src/models/forecast.dart';
part 'src/models/datapoint.dart';
part 'src/models/datablock.dart';
part 'src/models/alert.dart';
part 'src/models/flags.dart';
part 'src/enums/exclude_flags.dart';
part 'src/enums/language_enum.dart';
part 'src/enums/units_enum.dart';
