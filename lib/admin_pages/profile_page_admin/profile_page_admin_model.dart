import '/admin_pages/admin_nav/admin_nav_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_page_admin_widget.dart' show ProfilePageAdminWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageAdminModel extends FlutterFlowModel<ProfilePageAdminWidget> {
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
