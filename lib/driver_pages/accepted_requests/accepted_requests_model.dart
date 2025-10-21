import '/backend/backend.dart';
import '/driver_pages/driver_nav/driver_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'accepted_requests_widget.dart' show AcceptedRequestsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AcceptedRequestsModel extends FlutterFlowModel<AcceptedRequestsWidget> {
  ///  State fields for stateful widgets in this page.

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
