import '/components/eventcompcalender_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'raguide_copy_model.dart';
export 'raguide_copy_model.dart';

class RaguideCopyWidget extends StatefulWidget {
  const RaguideCopyWidget({super.key});

  @override
  State<RaguideCopyWidget> createState() => _RaguideCopyWidgetState();
}

class _RaguideCopyWidgetState extends State<RaguideCopyWidget> {
  late RaguideCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RaguideCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.eventcompcalenderCopyModel,
            updateCallback: () => setState(() {}),
            child: EventcompcalenderCopyWidget(),
          ),
        ),
      ),
    );
  }
}
