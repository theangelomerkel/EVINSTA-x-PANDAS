import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/review/review_widget.dart';
import 'event_ap_bar_widget.dart' show EventApBarWidget;
import 'package:flutter/material.dart';

class EventApBarModel extends FlutterFlowModel<EventApBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for review component.
  late ReviewModel reviewModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    reviewModel = createModel(context, () => ReviewModel());
  }

  @override
  void dispose() {
    reviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
