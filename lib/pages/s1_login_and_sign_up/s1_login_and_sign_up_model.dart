import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 's1_login_and_sign_up_widget.dart' show S1LoginAndSignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class S1LoginAndSignUpModel extends FlutterFlowModel<S1LoginAndSignUpWidget> {
  ///  Local state fields for this page.

  bool terms = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;
  // State field(s) for password_Login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode1;
  TextEditingController? passwordConfirmTextController1;
  late bool passwordConfirmVisibility1;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode1;
  TextEditingController? fullnameTextController1;
  String? Function(BuildContext, String?)? fullnameTextController1Validator;
  // State field(s) for DJname widget.
  FocusNode? dJnameFocusNode;
  TextEditingController? dJnameTextController;
  String? Function(BuildContext, String?)? dJnameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode2;
  TextEditingController? passwordConfirmTextController2;
  late bool passwordConfirmVisibility2;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController2Validator;
  // State field(s) for Genre widget.
  FocusNode? genreFocusNode;
  TextEditingController? genreTextController;
  String? Function(BuildContext, String?)? genreTextControllerValidator;
  // State field(s) for experience widget.
  FocusNode? experienceFocusNode;
  TextEditingController? experienceTextController;
  String? Function(BuildContext, String?)? experienceTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  TextEditingController? emailAddressTextController3;
  String? Function(BuildContext, String?)? emailAddressTextController3Validator;
  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode2;
  TextEditingController? fullnameTextController2;
  String? Function(BuildContext, String?)? fullnameTextController2Validator;
  // State field(s) for companyname widget.
  FocusNode? companynameFocusNode;
  TextEditingController? companynameTextController;
  String? Function(BuildContext, String?)? companynameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordTextController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? passwordTextController3Validator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode3;
  TextEditingController? passwordConfirmTextController3;
  late bool passwordConfirmVisibility3;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController3Validator;
  // State field(s) for eventype widget.
  FocusNode? eventypeFocusNode;
  TextEditingController? eventypeTextController;
  String? Function(BuildContext, String?)? eventypeTextControllerValidator;
  // State field(s) for businesstype widget.
  FocusNode? businesstypeFocusNode;
  TextEditingController? businesstypeTextController;
  String? Function(BuildContext, String?)? businesstypeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    passwordVisibility1 = false;
    passwordConfirmVisibility1 = false;
    passwordVisibility2 = false;
    passwordConfirmVisibility2 = false;
    passwordVisibility3 = false;
    passwordConfirmVisibility3 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();

    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordConfirmFocusNode1?.dispose();
    passwordConfirmTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();

    fullnameFocusNode1?.dispose();
    fullnameTextController1?.dispose();

    dJnameFocusNode?.dispose();
    dJnameTextController?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    passwordConfirmFocusNode2?.dispose();
    passwordConfirmTextController2?.dispose();

    genreFocusNode?.dispose();
    genreTextController?.dispose();

    experienceFocusNode?.dispose();
    experienceTextController?.dispose();

    emailAddressFocusNode3?.dispose();
    emailAddressTextController3?.dispose();

    fullnameFocusNode2?.dispose();
    fullnameTextController2?.dispose();

    companynameFocusNode?.dispose();
    companynameTextController?.dispose();

    passwordFocusNode3?.dispose();
    passwordTextController3?.dispose();

    passwordConfirmFocusNode3?.dispose();
    passwordConfirmTextController3?.dispose();

    eventypeFocusNode?.dispose();
    eventypeTextController?.dispose();

    businesstypeFocusNode?.dispose();
    businesstypeTextController?.dispose();
  }
}
