import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/property/property_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 's5search_events_model.dart';
export 's5search_events_model.dart';

class S5searchEventsWidget extends StatefulWidget {
  const S5searchEventsWidget({super.key});

  @override
  _S5searchEventsWidgetState createState() => _S5searchEventsWidgetState();
}

class _S5searchEventsWidgetState extends State<S5searchEventsWidget> {
  late S5searchEventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S5searchEventsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 46.0,
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 16.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        title: Text(
          'Search',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).tertiary,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).dark600,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x39000000),
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController',
                      const Duration(milliseconds: 2000),
                      () async {
                        await queryPropertiesRecordOnce()
                            .then(
                              (records) => _model.simpleSearchResults =
                                  TextSearch(
                                records
                                    .map(
                                      (record) =>
                                          TextSearchItem.fromTerms(record, [
                                        record.propertyName,
                                        record.propertyDescription,
                                        record.propertyAddress,
                                        record.propertyNeighborhood,
                                        record.notes]),
                                    )
                                    .toList(),
                              )
                                      .search(_model.textController.text)
                                      .map((r) => r.object)
                                      .toList(),
                            )
                            .onError((_, __) => _model.simpleSearchResults = [])
                            .whenComplete(() => setState(() {}));
                      },
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Urbanist',
                                color: FlutterFlowTheme.of(context).grayIcon,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).tertiary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: FlutterFlowTheme.of(context).grayIcon,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Urbanist',
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Builder(
                builder: (context) {
                  if (_model.textController.text == '') {
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: StreamBuilder<List<PropertiesRecord>>(
                        stream: queryPropertiesRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<PropertiesRecord> listViewPropertiesRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewPropertiesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewPropertiesRecord =
                                  listViewPropertiesRecordList[listViewIndex];
                              return PropertyWidget(
                                key: Key(
                                    'Keyj87_${listViewIndex}_of_${listViewPropertiesRecordList.length}'),
                              );
                            },
                          );
                        },
                      ),
                    );
                  } else {
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final search = _model.simpleSearchResults.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: search.length,
                            itemBuilder: (context, searchIndex) {
                              final searchItem = search[searchIndex];
                              return PropertyWidget(
                                key: Key(
                                    'Key9ng_${searchIndex}_of_${search.length}'),
                                property: searchItem,
                              );
                            },
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}