import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/review_copy/review_copy_widget.dart';
import 's3_event_data_public_widget.dart' show S3EventDataPublicWidget;
import 'package:flutter/material.dart';

class S3EventDataPublicModel extends FlutterFlowModel<S3EventDataPublicWidget> {
  ///  State fields for stateful widgets in this page.

  String currentPageLink = '';
  // Model for reviewCopy component.
  late ReviewCopyModel reviewCopyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    reviewCopyModel = createModel(context, () => ReviewCopyModel());
  }

  @override
  void dispose() {
    reviewCopyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
