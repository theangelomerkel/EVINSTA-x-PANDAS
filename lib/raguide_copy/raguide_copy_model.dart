import '/components/eventcompcalender_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'raguide_copy_widget.dart' show RaguideCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RaguideCopyModel extends FlutterFlowModel<RaguideCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for eventcompcalenderCopy component.
  late EventcompcalenderCopyModel eventcompcalenderCopyModel;

  @override
  void initState(BuildContext context) {
    eventcompcalenderCopyModel =
        createModel(context, () => EventcompcalenderCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventcompcalenderCopyModel.dispose();
  }
}
