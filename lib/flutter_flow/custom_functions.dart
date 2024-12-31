import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';
import "package:ffl_zfdwt1/backend/schema/enums/enums.dart" as ffl_zfdwt1_enums;
import 'package:ffl_zfdwt1/flutter_flow/custom_functions.dart'
    as ffl_zfdwt1_functions;

String clickBackFolder(
  List<String> folderName,
  int index,
) {
  if (index < 0 || index >= folderName.length) {
    throw ArgumentError('Invalid index');
  }

  List<String> selectedFolder = folderName.sublist(0, index + 1);

  String results = selectedFolder.join();

  return results;
}

List<String> clickBackParentPath(String? parentPath) {
  if (parentPath == null || parentPath.isEmpty) {
    return ['documents'];
  }

  // Remove the last string and then split by '/'
  List<String> pathlist = parentPath.split('/');

  // Remove the index with the exact word "home'
  pathlist.removeWhere((e) => e == 'documents');

  // Append "/' to each index
  for (int i = 0; i < pathlist.length; i++) {
    pathlist[i] = pathlist[i] + '>';
  }

  if (pathlist.isNotEmpty && pathlist.last == '/') {
    pathlist.removeLast();
  }

  return pathlist;
}

String? solarToLunar(
  DateTime date,
  double timeZone,
) {
  return null;
}
