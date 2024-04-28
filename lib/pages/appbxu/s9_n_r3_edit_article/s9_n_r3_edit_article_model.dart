import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 's9_n_r3_edit_article_widget.dart' show S9NR3EditArticleWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S9NR3EditArticleModel extends FlutterFlowModel<S9NR3EditArticleWidget> {
  ///  Local state fields for this page.

  List<String> imgsEdit = [];
  void addToImgsEdit(String item) => imgsEdit.add(item);
  void removeFromImgsEdit(String item) => imgsEdit.remove(item);
  void removeAtIndexFromImgsEdit(int index) => imgsEdit.removeAt(index);
  void insertAtIndexInImgsEdit(int index, String item) =>
      imgsEdit.insert(index, item);
  void updateImgsEditAtIndex(int index, Function(String) updateFn) =>
      imgsEdit[index] = updateFn(imgsEdit[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for propertyName widget.
  FocusNode? propertyNameFocusNode;
  TextEditingController? propertyNameTextController;
  String? Function(BuildContext, String?)? propertyNameTextControllerValidator;
  String? _propertyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5jgs457n' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  String? _descTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '38kyo240' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    propertyNameTextControllerValidator = _propertyNameTextControllerValidator;
    descTextControllerValidator = _descTextControllerValidator;
  }

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();
  }
}
