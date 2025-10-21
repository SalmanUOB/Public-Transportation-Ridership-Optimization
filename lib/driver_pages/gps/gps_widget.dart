import '/backend/backend.dart';
import '/driver_pages/driver_nav/driver_nav_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gps_model.dart';
export 'gps_model.dart';

class GpsWidget extends StatefulWidget {
  const GpsWidget({super.key});

  @override
  State<GpsWidget> createState() => _GpsWidgetState();
}

class _GpsWidgetState extends State<GpsWidget> {
  late GpsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GpsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<StationsRecord>>(
      stream: queryStationsRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<StationsRecord> gpsStationsRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFFD4CBB6),
              automaticallyImplyLeading: false,
              title: Text(
                'GPS',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter Tight',
                      color: Color(0xFF4B4429),
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 65.0),
                          child: FlutterFlowGoogleMap(
                            controller: _model.googleMapsController,
                            onCameraIdle: (latLng) => safeSetState(
                                () => _model.googleMapsCenter = latLng),
                            initialLocation: _model.googleMapsCenter ??=
                                LatLng(26.0667, 50.5577),
                            markers: gpsStationsRecordList
                                .map(
                                  (marker) => FlutterFlowMarker(
                                    marker.reference.path,
                                    marker.location!,
                                  ),
                                )
                                .toList(),
                            markerColor: GoogleMarkerColor.violet,
                            markerImage: MarkerImage(
                              imagePath: 'assets/images/bus-station-icon.png',
                              isAssetImage: true,
                              size: 30.0 ?? 20,
                            ),
                            mapType: MapType.normal,
                            style: GoogleMapStyle.standard,
                            initialZoom: 11.0,
                            allowInteraction: true,
                            allowZoom: true,
                            showZoomControls: true,
                            showLocation: true,
                            showCompass: false,
                            showMapToolbar: false,
                            showTraffic: true,
                            centerMapOnMarkerTap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.driverNavModel,
                      updateCallback: () => safeSetState(() {}),
                      child: DriverNavWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
