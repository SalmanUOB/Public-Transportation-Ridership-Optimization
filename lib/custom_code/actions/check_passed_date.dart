// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkPassedDate(DateTime inputDate) async {
  // check passed date by having input from user

  DateTime currentDate = DateTime.now();
  if (currentDate.day == inputDate.day &&
      currentDate.month == inputDate.month &&
      currentDate.year == inputDate.year) {
    return false;
  }
  if (inputDate.isBefore(currentDate)) {
    return true;
  } else {
    return false;
  }
}
