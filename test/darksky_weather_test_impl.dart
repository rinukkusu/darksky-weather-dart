// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Dark Sky Weather API library
library darksky_weather;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'darksky_weather_test_impl.g.dart';

part '../lib/src/darksky_weather_base.dart';
part 'darksky_client_test_impl.dart';
part '../lib/src/models/forecast.dart';
part '../lib/src/models/datapoint.dart';
part '../lib/src/models/datablock.dart';
part '../lib/src/models/alert.dart';
part '../lib/src/models/flags.dart';
part '../lib/src/enums/exclude_flags.dart';
part '../lib/src/enums/language_enum.dart';
part '../lib/src/enums/units_enum.dart';
