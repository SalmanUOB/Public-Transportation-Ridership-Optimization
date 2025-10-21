import '/admin_pages/admin_nav/admin_nav_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'add_bus_widget.dart' show AddBusWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddBusModel extends FlutterFlowModel<AddBusWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Seats widget.
  FocusNode? seatsFocusNode;
  TextEditingController? seatsTextController;
  String? Function(BuildContext, String?)? seatsTextControllerValidator;
  // State field(s) for DropDownDriver widget.
  String? dropDownDriverValue;
  FormFieldController<String>? dropDownDriverValueController;
  // State field(s) for StationDropDown widget.
  String? stationDropDownValue;
  FormFieldController<String>? stationDropDownValueController;
  // Stores action output result for [Custom Action - autiID] action in Button widget.
  int? id;
  // Model for AdminNav component.
  late AdminNavModel adminNavModel;

  @override
  void initState(BuildContext context) {
    adminNavModel = createModel(context, () => AdminNavModel());
  }

  @override
  void dispose() {
    seatsFocusNode?.dispose();
    seatsTextController?.dispose();

    adminNavModel.dispose();
  }
}
