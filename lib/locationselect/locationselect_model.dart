import '/components/searchcities_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'locationselect_widget.dart' show LocationselectWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationselectModel extends FlutterFlowModel<LocationselectWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for searchcities component.
  late SearchcitiesModel searchcitiesModel;

  @override
  void initState(BuildContext context) {
    searchcitiesModel = createModel(context, () => SearchcitiesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchcitiesModel.dispose();
  }
}
