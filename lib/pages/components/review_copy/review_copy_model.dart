import '/flutter_flow/flutter_flow_util.dart';
import 'review_copy_widget.dart' show ReviewCopyWidget;
import 'package:flutter/material.dart';

class ReviewCopyModel extends FlutterFlowModel<ReviewCopyWidget> {
  ///  Local state fields for this component.

  bool answer = false;

  DocumentReference? review;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for reviews widget.
  ScrollController? reviews;
  // State field(s) for answerss widget.
  ScrollController? answerss;
  // State field(s) for write widget.
  ScrollController? write;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    reviews = ScrollController();
    answerss = ScrollController();
    write = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    reviews?.dispose();
    answerss?.dispose();
    write?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
