import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/emptyreview/emptyreview_widget.dart';
import '/pages/components/profile_user/profile_user_widget.dart';
import 'review_copy_widget.dart' show ReviewCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {
    columnController = ScrollController();
    reviews = ScrollController();
    answerss = ScrollController();
    write = ScrollController();
  }

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
