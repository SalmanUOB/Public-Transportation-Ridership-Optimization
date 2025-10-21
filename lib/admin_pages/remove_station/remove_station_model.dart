import '/admin_pages/admin_nav/admin_nav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'remove_station_widget.dart' show RemoveStationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class RemoveStationModel extends FlutterFlowModel<RemoveStationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminNav component.
  late AdminNavModel adminNavModel;

  @override
  void initState(BuildContext context) {
    adminNavModel = createModel(context, () => AdminNavModel());
  }

  @override
  void dispose() {
    adminNavModel.dispose();
  }
}
