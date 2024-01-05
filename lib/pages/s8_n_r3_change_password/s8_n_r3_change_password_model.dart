import '/flutter_flow/flutter_flow_util.dart';
import 's8_n_r3_change_password_widget.dart' show S8NR3ChangePasswordWidget;
import 'package:flutter/material.dart';

class S8NR3ChangePasswordModel
    extends FlutterFlowModel<S8NR3ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
