import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'history_widget.dart' show HistoryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryModel extends FlutterFlowModel<HistoryWidget> {
  ///  Local state fields for this page.

  int? count = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in History widget.
  List<BookingsRecord>? list;
  // Stores action output result for [Custom Action - checkPassedDate] action in History widget.
  bool? checkResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
