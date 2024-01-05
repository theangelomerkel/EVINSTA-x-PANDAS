import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/apbar/apbar_widget.dart';
import '/pages/components/empty_events/empty_events_widget.dart';
import '/pages/components/event_c/event_c_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 's4_user_interface_model.dart';
export 's4_user_interface_model.dart';

class S4UserInterfaceWidget extends StatefulWidget {
  const S4UserInterfaceWidget({super.key});

  @override
  _S4UserInterfaceWidgetState createState() => _S4UserInterfaceWidgetState();
}

class _S4UserInterfaceWidgetState extends State<S4UserInterfaceWidget> {
  late S4UserInterfaceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S4UserInterfaceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.sizeOf(context).height * 0.1),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: wrapWithModel(
            model: _model.apbarModel,
            updateCallback: () => setState(() {}),
            child: const ApbarWidget(),
          ),
          actions: const [],
          centerTitle: false,
          toolbarHeight: MediaQuery.sizeOf(context).height * 0.1,
          elevation: 0.0,
        ),
      ),
      body: SafeArea(
        top: true,
        child: StreamBuilder<List<PropertiesRecord>>(
          stream: queryPropertiesRecord(
            queryBuilder: (propertiesRecord) =>
                propertiesRecord.orderBy('date', descending: true),
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
            List<PropertiesRecord> containerPropertiesRecordList =
                snapshot.data!;
            return Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlutterFlowCalendar(
                    color: FlutterFlowTheme.of(context).primary,
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    weekFormat: true,
                    weekStartsMonday: true,
                    initialDate: getCurrentTimestamp,
                    onChange: (DateTimeRange? newSelectedDate) {
                      setState(
                          () => _model.calendarSelectedDay = newSelectedDate);
                    },
                    titleStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Urbanist',
                              fontSize: 16.0,
                            ),
                    dayOfWeekStyle:
                        FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Urbanist',
                              fontSize: 12.0,
                            ),
                    dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Urbanist',
                          fontSize: 12.0,
                        ),
                    selectedDateStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Urbanist',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                    inactiveDateStyle:
                        FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Urbanist',
                              color: const Color(0x6B57636C),
                              fontSize: 12.0,
                            ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                      child: Builder(
                        builder: (context) {
                          final events = (_model.calendarSelectedDay != null
                                  ? containerPropertiesRecordList
                                      .where((e) =>
                                          (e.date! >=
                                              _model.calendarSelectedDay!
                                                  .start) &&
                                          (e.date! <=
                                              _model
                                                  .calendarSelectedDay!.end) &&
                                          ((e.userRef ==
                                                  currentUserReference) ||
                                              e.guestRef.contains(
                                                  currentUserReference)))
                                      .toList()
                                  : containerPropertiesRecordList
                                      .where((e) =>
                                          (e.userRef == currentUserReference) ||
                                          e.guestRef
                                              .contains(currentUserReference))
                                      .toList())
                              .toList();
                          if (events.isEmpty) {
                            return const Center(
                              child: EmptyEventsWidget(),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: events.length,
                            itemBuilder: (context, eventsIndex) {
                              final eventsItem = events[eventsIndex];
                              return Container(
                                decoration: const BoxDecoration(),
                                child: EventCWidget(
                                  key: Key(
                                      'Key3ya_${eventsIndex}_of_${events.length}'),
                                  event: eventsItem,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            );
          },
        ),
      ),
    );
  }
}
