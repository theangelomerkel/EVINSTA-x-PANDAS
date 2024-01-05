import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's5search_events_widget.dart' show S5searchEventsWidget;
import 'package:flutter/material.dart';

class S5searchEventsModel extends FlutterFlowModel<S5searchEventsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<PropertiesRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
