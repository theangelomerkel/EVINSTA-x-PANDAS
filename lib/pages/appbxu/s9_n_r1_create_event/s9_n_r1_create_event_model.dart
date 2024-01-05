import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's9_n_r1_create_event_widget.dart' show S9NR1CreateEventWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class S9NR1CreateEventModel extends FlutterFlowModel<S9NR1CreateEventWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

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

  DateTime? datePicked;
  // State field(s) for propertyAddress widget.
  FocusNode? propertyAddressFocusNode;
  TextEditingController? propertyAddressController;
  String? Function(BuildContext, String?)? propertyAddressControllerValidator;
  String? _propertyAddressControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
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

  // State field(s) for neighb widget.
  FocusNode? neighbFocusNode;
  TextEditingController? neighbController;
  String? Function(BuildContext, String?)? neighbControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for persons widget.
  FocusNode? personsFocusNode;
  TextEditingController? personsController;
  String? Function(BuildContext, String?)? personsControllerValidator;
  // State field(s) for spotify widget.
  FocusNode? spotifyFocusNode;
  TextEditingController? spotifyController;
  String? Function(BuildContext, String?)? spotifyControllerValidator;
  // State field(s) for public widget.
  bool? publicValue;
  // State field(s) for free widget.
  bool? freeValue;
  // State field(s) for pricePerNight widget.
  FocusNode? pricePerNightFocusNode;
  TextEditingController? pricePerNightController;
  String? Function(BuildContext, String?)? pricePerNightControllerValidator;
  // State field(s) for paypal widget.
  FocusNode? paypalFocusNode;
  TextEditingController? paypalController;
  String? Function(BuildContext, String?)? paypalControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PropertiesRecord? newProperty;
  // State field(s) for wishlist widget.
  FocusNode? wishlistFocusNode;
  TextEditingController? wishlistController;
  String? Function(BuildContext, String?)? wishlistControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    propertyNameControllerValidator = _propertyNameControllerValidator;
    propertyAddressControllerValidator = _propertyAddressControllerValidator;
    descControllerValidator = _descControllerValidator;
  }

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameController?.dispose();

    propertyAddressFocusNode?.dispose();
    propertyAddressController?.dispose();

    descFocusNode?.dispose();
    descController?.dispose();

    neighbFocusNode?.dispose();
    neighbController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    personsFocusNode?.dispose();
    personsController?.dispose();

    spotifyFocusNode?.dispose();
    spotifyController?.dispose();

    pricePerNightFocusNode?.dispose();
    pricePerNightController?.dispose();

    paypalFocusNode?.dispose();
    paypalController?.dispose();

    expandableController.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();

    wishlistFocusNode?.dispose();
    wishlistController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
