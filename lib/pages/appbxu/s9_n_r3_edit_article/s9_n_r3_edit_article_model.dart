import '/flutter_flow/flutter_flow_util.dart';
import 's9_n_r3_edit_article_widget.dart' show S9NR3EditArticleWidget;
import 'package:flutter/material.dart';

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
  TextEditingController? propertyNameController;
  String? Function(BuildContext, String?)? propertyNameControllerValidator;
  String? _propertyNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descController;
  String? Function(BuildContext, String?)? descControllerValidator;
  String? _descControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    propertyNameControllerValidator = _propertyNameControllerValidator;
    descControllerValidator = _descControllerValidator;
  }

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameController?.dispose();

    descFocusNode?.dispose();
    descController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
