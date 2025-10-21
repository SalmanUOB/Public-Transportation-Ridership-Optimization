import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/driver_pages/driver_nav/driver_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'book_history_driver_widget.dart' show BookHistoryDriverWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookHistoryDriverModel extends FlutterFlowModel<BookHistoryDriverWidget> {
  ///  Local state fields for this page.

  int? count = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in bookHistoryDriver widget.
  List<BookingsRecord>? list;
  // Stores action output result for [Custom Action - checkPassedDate] action in bookHistoryDriver widget.
  bool? checkResult;
  // Model for DriverNav component.
  late DriverNavModel driverNavModel;

  @override
  void initState(BuildContext context) {
    driverNavModel = createModel(context, () => DriverNavModel());
  }

  @override
  void dispose() {
    driverNavModel.dispose();
  }
}
