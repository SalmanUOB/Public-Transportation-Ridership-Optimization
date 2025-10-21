import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/driver_pages/dashboard/dashboard_widget.dart';
import '/driver_pages/driver_nav/driver_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'home_driver_widget.dart' show HomeDriverWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class HomeDriverModel extends FlutterFlowModel<HomeDriverWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dashboard component.
  late DashboardModel dashboardModel;
  // Model for DriverNav component.
  late DriverNavModel driverNavModel;

  @override
  void initState(BuildContext context) {
    dashboardModel = createModel(context, () => DashboardModel());
    driverNavModel = createModel(context, () => DriverNavModel());
  }

  @override
  void dispose() {
    dashboardModel.dispose();
    driverNavModel.dispose();
  }
}
