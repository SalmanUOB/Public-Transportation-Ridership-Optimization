import '/auth/firebase_auth/auth_util.dart';
import '/driver_pages/driver_nav/driver_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_page_driver_widget.dart' show ProfilePageDriverWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageDriverModel extends FlutterFlowModel<ProfilePageDriverWidget> {
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
