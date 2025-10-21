import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_pages/timings/timings_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'booking_widget.dart' show BookingWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingModel extends FlutterFlowModel<BookingWidget> {
  ///  Local state fields for this page.

  bool reload = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Custom Action - checkPassedDate] action in Calendar widget.
  bool? check;
  // Stores action output result for [Bottom Sheet - timings] action in Calendar widget.
  String? time;
  // Stores action output result for [Custom Action - autiID] action in Button widget.
  int? id;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BookingsRecord? bookRef;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
