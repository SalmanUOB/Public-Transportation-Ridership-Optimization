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

import 'dart:convert';
import 'package:crypto/crypto.dart';

Future<String> hashFunction(String password) async {
  // Add your function code here!
  final bytes = utf8.encode(password); // Convert password to bytes
  final digest = sha256.convert(bytes); // Hash the bytes
  return digest.toString(); // Convert to hexadecimal string
}
