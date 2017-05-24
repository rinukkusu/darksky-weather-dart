// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Dark Sky Weather API library
library darksky_weather;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:owl/annotation/json.dart';

import 'darksky_weather_io.json.g.dart';

part 'src/darksky_weather_base.dart';
part 'src/darksky_weather_io.dart';
part 'src/models/forecast.dart';
part 'src/models/datapoint.dart';
part 'src/models/datablock.dart';
