import '/flutter_flow/flutter_flow_util.dart';
import 'refusedlist_widget.dart' show RefusedlistWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class RefusedlistModel extends FlutterFlowModel<RefusedlistWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
