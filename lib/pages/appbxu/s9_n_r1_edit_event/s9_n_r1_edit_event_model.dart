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
  TextEditingController? propertyNameTextController;
  String? Function(BuildContext, String?)? propertyNameTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  // State field(s) for neighb widget.
  FocusNode? neighbFocusNode;
  TextEditingController? neighbTextController;
  String? Function(BuildContext, String?)? neighbTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for persons widget.
  FocusNode? personsFocusNode;
  TextEditingController? personsTextController;
  String? Function(BuildContext, String?)? personsTextControllerValidator;
  // State field(s) for wishlist widget.
  FocusNode? wishlistFocusNode;
  TextEditingController? wishlistTextController;
  String? Function(BuildContext, String?)? wishlistTextControllerValidator;
  // State field(s) for spotify widget.
  FocusNode? spotifyFocusNode;
  TextEditingController? spotifyTextController;
  String? Function(BuildContext, String?)? spotifyTextControllerValidator;
  // State field(s) for public widget.
  bool? publicValue;
  // State field(s) for free widget.
  bool? freeValue;
  // State field(s) for pricePerNight widget.
  FocusNode? pricePerNightFocusNode;
  TextEditingController? pricePerNightTextController;
  String? Function(BuildContext, String?)? pricePerNightTextControllerValidator;
  // State field(s) for paypal widget.
  FocusNode? paypalFocusNode;
  TextEditingController? paypalTextController;
  String? Function(BuildContext, String?)? paypalTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for draft widget.
  bool? draftValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();

    neighbFocusNode?.dispose();
    neighbTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    personsFocusNode?.dispose();
    personsTextController?.dispose();

    wishlistFocusNode?.dispose();
    wishlistTextController?.dispose();

    spotifyFocusNode?.dispose();
    spotifyTextController?.dispose();

    pricePerNightFocusNode?.dispose();
    pricePerNightTextController?.dispose();

    paypalFocusNode?.dispose();
    paypalTextController?.dispose();

    expandableExpandableController.dispose();
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
