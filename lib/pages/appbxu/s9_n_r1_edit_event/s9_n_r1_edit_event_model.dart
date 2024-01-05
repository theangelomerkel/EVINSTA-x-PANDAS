import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/users/users_widget.dart';
import 'dart:io';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 's9_n_r1_edit_event_widget.dart' show S9NR1EditEventWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class S9NR1EditEventModel extends FlutterFlowModel<S9NR1EditEventWidget> {
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
  DateTime? datePicked;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descController;
  String? Function(BuildContext, String?)? descControllerValidator;
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
  // State field(s) for wishlist widget.
  FocusNode? wishlistFocusNode;
  TextEditingController? wishlistController;
  String? Function(BuildContext, String?)? wishlistControllerValidator;
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
  // State field(s) for draft widget.
  bool? draftValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    descFocusNode?.dispose();
    descController?.dispose();

    neighbFocusNode?.dispose();
    neighbController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    personsFocusNode?.dispose();
    personsController?.dispose();

    wishlistFocusNode?.dispose();
    wishlistController?.dispose();

    spotifyFocusNode?.dispose();
    spotifyController?.dispose();

    pricePerNightFocusNode?.dispose();
    pricePerNightController?.dispose();

    paypalFocusNode?.dispose();
    paypalController?.dispose();

    expandableController.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
