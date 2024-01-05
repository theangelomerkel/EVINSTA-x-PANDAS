import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/apbar/apbar_widget.dart';
import 's4_user_interface_widget.dart' show S4UserInterfaceWidget;
import 'package:flutter/material.dart';

class S4UserInterfaceModel extends FlutterFlowModel<S4UserInterfaceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for apbar component.
  late ApbarModel apbarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  /// Initialization and disposal methods.

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

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
