import '/components/searchcities_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: true,
              snap: false,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderRadius: 30.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF15161E),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  FFLocalizations.of(context).getText(
                    '7plxb185' /* Dashboard */,
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap()
                            .containsKey('Plus Jakarta Sans'),
                      ),
                ),
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://picsum.photos/id/115/600',
                    fit: BoxFit.cover,
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: wrapWithModel(
                  model: _model.searchcitiesModel,
                  updateCallback: () => setState(() {}),
                  child: SearchcitiesWidget(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
