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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_model.dart';
export 'booking_model.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({
    super.key,
    required this.stationDetail,
    required this.stationName,
  });

  final DocumentReference? stationDetail;
  final String? stationName;

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  late BookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFD4CBB6),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF4B4429),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Details',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Color(0xFF4B4429),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  1.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 4.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: StreamBuilder<List<StationsRecord>>(
                                    stream: queryStationsRecord(
                                      queryBuilder: (stationsRecord) =>
                                          stationsRecord.where(
                                        'cityID',
                                        isEqualTo: widget!.stationDetail,
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<StationsRecord>
                                          imageStationsRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final imageStationsRecord =
                                          imageStationsRecordList.isNotEmpty
                                              ? imageStationsRecordList.first
                                              : null;

                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            imageStationsRecord?.image,
                                            'https://static.vecteezy.com/system/resources/previews/004/141/669/non_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
                                          ),
                                          width: double.infinity,
                                          height: 280.0,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child:
                                            StreamBuilder<List<StationsRecord>>(
                                          stream: queryStationsRecord(
                                            queryBuilder: (stationsRecord) =>
                                                stationsRecord.where(
                                              'cityID',
                                              isEqualTo: widget!.stationDetail,
                                            ),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<StationsRecord>
                                                textStationsRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textStationsRecord =
                                                textStationsRecordList
                                                        .isNotEmpty
                                                    ? textStationsRecordList
                                                        .first
                                                    : null;

                                            return Text(
                                              valueOrDefault<String>(
                                                textStationsRecord?.name,
                                                'station',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        letterSpacing: 0.0,
                                                      ),
                                            );
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.location_on_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<StationsRecord>>(
                                                stream: queryStationsRecord(
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<StationsRecord>
                                                      textStationsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final textStationsRecord =
                                                      textStationsRecordList
                                                              .isNotEmpty
                                                          ? textStationsRecordList
                                                              .first
                                                          : null;

                                                  return Text(
                                                    valueOrDefault<String>(
                                                      textStationsRecord
                                                          ?.location
                                                          ?.toString(),
                                                      'location',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.info,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<StationsRecord>>(
                                              stream: queryStationsRecord(
                                                queryBuilder:
                                                    (stationsRecord) =>
                                                        stationsRecord.where(
                                                  'cityID',
                                                  isEqualTo:
                                                      widget!.stationDetail,
                                                ),
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<StationsRecord>
                                                    textStationsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final textStationsRecord =
                                                    textStationsRecordList
                                                            .isNotEmpty
                                                        ? textStationsRecordList
                                                            .first
                                                        : null;

                                                return Text(
                                                  valueOrDefault<String>(
                                                    textStationsRecord?.adress,
                                                    'address',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child:
                                            StreamBuilder<List<StationsRecord>>(
                                          stream: queryStationsRecord(
                                            queryBuilder: (stationsRecord) =>
                                                stationsRecord.where(
                                              'cityID',
                                              isEqualTo: widget!.stationDetail,
                                            ),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<StationsRecord>
                                                textStationsRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textStationsRecord =
                                                textStationsRecordList
                                                        .isNotEmpty
                                                    ? textStationsRecordList
                                                        .first
                                                    : null;

                                            return Text(
                                              valueOrDefault<String>(
                                                textStationsRecord?.cityname,
                                                'city',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        letterSpacing: 0.0,
                                                      ),
                                            );
                                          },
                                        ),
                                      ),
                                      StreamBuilder<List<StationsRecord>>(
                                        stream: queryStationsRecord(
                                          queryBuilder: (stationsRecord) =>
                                              stationsRecord.where(
                                            'cityID',
                                            isEqualTo: widget!.stationDetail,
                                          ),
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<StationsRecord>
                                              textStationsRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final textStationsRecord =
                                              textStationsRecordList.isNotEmpty
                                                  ? textStationsRecordList.first
                                                  : null;

                                          return Text(
                                            valueOrDefault<String>(
                                              textStationsRecord?.describtion,
                                              'describe',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF606A85),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          );
                                        },
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: Color(0xFFE5E7EB),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            1.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Duration',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF606A85),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      FlutterFlowCalendar(
                                        color: Color(0xFF563B10),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        weekFormat: true,
                                        weekStartsMonday: false,
                                        initialDate: getCurrentTimestamp,
                                        rowHeight: 48.0,
                                        onChange: (DateTimeRange?
                                            newSelectedDate) async {
                                          if (_model.calendarSelectedDay ==
                                              newSelectedDate) {
                                            return;
                                          }
                                          _model.calendarSelectedDay =
                                              newSelectedDate;
                                          _model.check =
                                              await actions.checkPassedDate(
                                            _model.calendarSelectedDay!.start,
                                          );
                                          if (_model.check!) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Title'),
                                                  content:
                                                      Text('Date is Passed'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          } else {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () =>
                                                      FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: TimingsWidget(
                                                      date: _model
                                                          .calendarSelectedDay!
                                                          .start,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => safeSetState(
                                                () => _model.time = value));
                                          }

                                          safeSetState(() {});
                                        },
                                        titleStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              letterSpacing: 0.0,
                                            ),
                                        dayOfWeekStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                        dateStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        selectedDateStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Inter Tight',
                                                  letterSpacing: 0.0,
                                                ),
                                        inactiveDateStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: Color(0xFFE5E7EB),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ].addToEnd(SizedBox(height: 32.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
                child: StreamBuilder<List<BusesRecord>>(
                  stream: queryBusesRecord(
                    queryBuilder: (busesRecord) => busesRecord
                        .where(
                          'stations',
                          isEqualTo: widget!.stationName,
                        )
                        .where(
                          'availablesseat',
                          isNotEqualTo: 0,
                        ),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<BusesRecord> buttonBusesRecordList = snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final buttonBusesRecord = buttonBusesRecordList.isNotEmpty
                        ? buttonBusesRecordList.first
                        : null;

                    return FFButtonWidget(
                      onPressed: () async {
                        _model.id = await actions.autiID();
                        if (_model.time != null && _model.time != '') {
                          var bookingsRecordReference =
                              BookingsRecord.collection.doc();
                          await bookingsRecordReference
                              .set(createBookingsRecordData(
                            userID: currentUserUid,
                            date: _model.calendarSelectedDay?.start,
                            bookingStatus: 'Pending',
                            bookingID: _model.id?.toString(),
                            bookingPrice: 20.0,
                            time: _model.time,
                            busID: _model.id?.toString(),
                            busSeats: buttonBusesRecord?.busSeats,
                            busDriverName: buttonBusesRecord?.busDriverName,
                            userSeat: buttonBusesRecord?.startSeat,
                          ));
                          _model.bookRef = BookingsRecord.getDocumentFromData(
                              createBookingsRecordData(
                                userID: currentUserUid,
                                date: _model.calendarSelectedDay?.start,
                                bookingStatus: 'Pending',
                                bookingID: _model.id?.toString(),
                                bookingPrice: 20.0,
                                time: _model.time,
                                busID: _model.id?.toString(),
                                busSeats: buttonBusesRecord?.busSeats,
                                busDriverName: buttonBusesRecord?.busDriverName,
                                userSeat: buttonBusesRecord?.startSeat,
                              ),
                              bookingsRecordReference);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Booking Confirmed !',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );

                          context.pushNamed('activity');

                          await buttonBusesRecord!.reference.update({
                            ...mapToFirestore(
                              {
                                'availablesseat': FieldValue.increment(
                                    -(functions.decrementFunction()!)),
                                'startSeat': FieldValue.increment(1),
                              },
                            ),
                          });

                          safeSetState(() {});
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title:
                                    Text('Please choose proper date and time'),
                                content:
                                    Text('Please choose proper date and time'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Book Now',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF4B4429),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Figtree',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
