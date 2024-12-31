import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/enums/enums.dart';

bool isOddNumber(int num) {
  final res = num % 2;
  if (res != 0) {
    return true;
  } else {
    return false;
  }
}

DateTime? dateStrToDateTime(String? dateString) {
  if (dateString?.isEmpty ?? true) return null;
  DateTime date = DateTime.parse(dateString!);

  return date;
}
