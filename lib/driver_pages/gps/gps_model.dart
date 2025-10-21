import '/backend/backend.dart';
import '/driver_pages/driver_nav/driver_nav_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'gps_widget.dart' show GpsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GpsModel extends FlutterFlowModel<GpsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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
