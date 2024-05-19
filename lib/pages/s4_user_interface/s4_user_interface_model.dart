import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/apbar/apbar_widget.dart';
import '/pages/components/event_c/event_c_widget.dart';
import '/pages/empty_events/empty_events_widget.dart';
import 's4_user_interface_widget.dart' show S4UserInterfaceWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S4UserInterfaceModel extends FlutterFlowModel<S4UserInterfaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for apbar component.
  late ApbarModel apbarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    apbarModel = createModel(context, () => ApbarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    apbarModel.dispose();
  }
}
