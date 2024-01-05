import '/flutter_flow/flutter_flow_util.dart';
import 's9_n_r3_create_article_widget.dart' show S9NR3CreateArticleWidget;
import 'package:flutter/material.dart';

class S9NR3CreateArticleModel
    extends FlutterFlowModel<S9NR3CreateArticleWidget> {
  ///  Local state fields for this page.

  List<String> imgsCreate = [];
  void addToImgsCreate(String item) => imgsCreate.add(item);
  void removeFromImgsCreate(String item) => imgsCreate.remove(item);
  void removeAtIndexFromImgsCreate(int index) => imgsCreate.removeAt(index);
  void insertAtIndexInImgsCreate(int index, String item) =>
      imgsCreate.insert(index, item);
  void updateImgsCreateAtIndex(int index, Function(String) updateFn) =>
      imgsCreate[index] = updateFn(imgsCreate[index]);

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
