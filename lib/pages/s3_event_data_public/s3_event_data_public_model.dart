import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/guestlist_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/registration/registration_widget.dart';
import '/pages/components/review_copy/review_copy_widget.dart';
import '/pages/wishlist/wishlist_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 's3_event_data_public_widget.dart' show S3EventDataPublicWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class S3EventDataPublicModel extends FlutterFlowModel<S3EventDataPublicWidget> {
  ///  State fields for stateful widgets in this page.

  String currentPageLink = '';
  // Model for reviewCopy component.
  late ReviewCopyModel reviewCopyModel;

  @override
  void initState(BuildContext context) {
    reviewCopyModel = createModel(context, () => ReviewCopyModel());
  }

  @override
  void dispose() {
    reviewCopyModel.dispose();
  }
}
