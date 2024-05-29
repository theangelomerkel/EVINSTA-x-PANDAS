import '/components/searchcities_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'locationselect_model.dart';
export 'locationselect_model.dart';

class LocationselectWidget extends StatefulWidget {
  const LocationselectWidget({super.key});

  @override
  State<LocationselectWidget> createState() => _LocationselectWidgetState();
}

class _LocationselectWidgetState extends State<LocationselectWidget> {
  late LocationselectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationselectModel());

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
        backgroundColor: Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.searchcitiesModel,
            updateCallback: () => setState(() {}),
            child: SearchcitiesWidget(),
          ),
        ),
      ),
    );
  }
}
