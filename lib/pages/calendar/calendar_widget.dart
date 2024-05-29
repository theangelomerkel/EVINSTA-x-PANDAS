import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/event_c/event_c_widget.dart';
import '/pages/empty_events/empty_events_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
    this.date,
    this.flag,
  });

  final DateTime? date;
  final String? flag;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late CalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PropertiesRecord>>(
      stream: queryPropertiesRecord(
        queryBuilder: (propertiesRecord) => propertiesRecord
            .where(
              'isDraft',
              isEqualTo: false,
            )
            .orderBy('date', descending: true),
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
        List<PropertiesRecord> containerPropertiesRecordList = snapshot.data!;
        return Container(
          width: 400.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.flag!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          HapticFeedback.selectionClick();
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).primary,
                iconColor: FlutterFlowTheme.of(context).secondaryText,
                weekFormat: true,
                weekStartsMonday: true,
                initialDate:
                    widget.date != null ? widget.date : getCurrentTimestamp,
                onChange: (DateTimeRange? newSelectedDate) {
                  setState(() => _model.calendarSelectedDay = newSelectedDate);
                },
                titleStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleMediumFamily),
                    ),
                dayOfWeekStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodySmallFamily),
                    ),
                dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                selectedDateStyle: FlutterFlowTheme.of(context)
                    .titleSmall
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: Colors.white,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                inactiveDateStyle: FlutterFlowTheme.of(context)
                    .bodySmall
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                      color: Color(0x6B57636C),
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodySmallFamily),
                    ),
                locale: FFLocalizations.of(context).languageCode,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'j3ncwud6' /* Events */,
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (widget.flag == 'My events') {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final myevents = containerPropertiesRecordList
                                .where((e) =>
                                    (e.date! >=
                                        _model.calendarSelectedDay!.start) &&
                                    (e.date! <=
                                        _model.calendarSelectedDay!.end) &&
                                    (e.userRef == currentUserReference))
                                .toList();
                            if (myevents.isEmpty) {
                              return Center(
                                child: EmptyEventsWidget(),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: myevents.length,
                              itemBuilder: (context, myeventsIndex) {
                                final myeventsItem = myevents[myeventsIndex];
                                return Container(
                                  decoration: BoxDecoration(),
                                  child: EventCWidget(
                                    key: Key(
                                        'Keym9n_${myeventsIndex}_of_${myevents.length}'),
                                    event: myeventsItem,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    } else if (widget.flag == 'Invited events') {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final invitedevents = containerPropertiesRecordList
                                .where((e) =>
                                    (e.date! >=
                                        _model.calendarSelectedDay!.start) &&
                                    (e.date! <=
                                        _model.calendarSelectedDay!.end) &&
                                    e.guestRef.contains(currentUserReference))
                                .toList();
                            if (invitedevents.isEmpty) {
                              return Center(
                                child: EmptyEventsWidget(),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: invitedevents.length,
                              itemBuilder: (context, invitedeventsIndex) {
                                final invitedeventsItem =
                                    invitedevents[invitedeventsIndex];
                                return Container(
                                  decoration: BoxDecoration(),
                                  child: EventCWidget(
                                    key: Key(
                                        'Keyk9u_${invitedeventsIndex}_of_${invitedevents.length}'),
                                    event: invitedeventsItem,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    } else if (widget.flag == 'Wishlist') {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final wish = FFAppState().listEvents.toList();
                            if (wish.isEmpty) {
                              return Center(
                                child: EmptyEventsWidget(),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: wish.length,
                              itemBuilder: (context, wishIndex) {
                                final wishItem = wish[wishIndex];
                                return StreamBuilder<PropertiesRecord>(
                                  stream:
                                      PropertiesRecord.getDocument(wishItem),
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
                                    final containerPropertiesRecord =
                                        snapshot.data!;
                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: EventCWidget(
                                        key: Key(
                                            'Keyapx_${wishIndex}_of_${wish.length}'),
                                        event: containerPropertiesRecord,
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final allevents = containerPropertiesRecordList
                                .where((e) =>
                                    (e.date! >=
                                        _model.calendarSelectedDay!.start) &&
                                    (e.date! <=
                                        _model.calendarSelectedDay!.end))
                                .toList();
                            if (allevents.isEmpty) {
                              return Center(
                                child: EmptyEventsWidget(),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: allevents.length,
                              itemBuilder: (context, alleventsIndex) {
                                final alleventsItem = allevents[alleventsIndex];
                                return Container(
                                  decoration: BoxDecoration(),
                                  child: EventCWidget(
                                    key: Key(
                                        'Keysz5_${alleventsIndex}_of_${allevents.length}'),
                                    event: alleventsItem,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
