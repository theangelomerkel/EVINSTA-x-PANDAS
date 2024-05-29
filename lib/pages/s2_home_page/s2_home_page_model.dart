import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/article_widget.dart';
import '/components/eventlistcomp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/event_c/event_c_widget.dart';
import '/walkthroughs/create_event.dart';
import 'dart:math';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 's2_home_page_widget.dart' show S2HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class S2HomePageModel extends FlutterFlowModel<S2HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? createEventController;
  final unfocusNode = FocusNode();
  // Model for eventlistcomp component.
  late EventlistcompModel eventlistcompModel1;
  // Model for eventlistcomp component.
  late EventlistcompModel eventlistcompModel2;

  @override
  void initState(BuildContext context) {
    eventlistcompModel1 = createModel(context, () => EventlistcompModel());
    eventlistcompModel2 = createModel(context, () => EventlistcompModel());
  }

  @override
  void dispose() {
    createEventController?.finish();
    unfocusNode.dispose();
    eventlistcompModel1.dispose();
    eventlistcompModel2.dispose();
  }
}
