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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 's2_home_page_model.dart';
export 's2_home_page_model.dart';

class S2HomePageWidget extends StatefulWidget {
  const S2HomePageWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final List<dynamic>? parameter1;
  final dynamic parameter2;

  @override
  State<S2HomePageWidget> createState() => _S2HomePageWidgetState();
}

class _S2HomePageWidgetState extends State<S2HomePageWidget>
    with TickerProviderStateMixin {
  late S2HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S2HomePageModel());

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
        body: Stack(
          alignment: AlignmentDirectional(0.0, 1.0),
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.271,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Rectangle_7.png',
                    ).image,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 48.0),
                          child: Hero(
                            tag: 'italyImage',
                            transitionOnUserGestures: true,
                            child: Image.asset(
                              'assets/images/EVI_Logo.png',
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              fit: BoxFit.none,
                              alignment: Alignment(0.0, 0.0),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 48.0),
                          child: Hero(
                            tag: 'italyImage',
                            transitionOnUserGestures: true,
                            child: Image.asset(
                              'assets/images/EVI_Logo.png',
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment(0.0, 0.0),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: StreamBuilder<List<PropertiesRecord>>(
                stream: queryPropertiesRecord(
                  queryBuilder: (propertiesRecord) => propertiesRecord
                      .where(
                        'publicEvent',
                        isEqualTo: true,
                      )
                      .where(
                        'isDraft',
                        isEqualTo: false,
                      )
                      .orderBy('date', descending: true),
                ),
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
                  List<PropertiesRecord> contentCardPropertiesRecordList =
                      snapshot.data!;
                  return Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.65,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '2e8i9atd' /* Your Events */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .headlineMediumFamily),
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 12.0),
                              child: FutureBuilder<int>(
                                future: queryPropertiesRecordCount(
                                  queryBuilder: (propertiesRecord) =>
                                      propertiesRecord
                                          .where(
                                            'userRef',
                                            isEqualTo: currentUserReference,
                                          )
                                          .where(
                                            'lastUpdated',
                                            isGreaterThanOrEqualTo:
                                                getCurrentTimestamp,
                                          ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  int textCount = snapshot.data!;
                                  return Text(
                                    FFLocalizations.of(context).getText(
                                      'gokt7fb5' /*  Events this month */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily),
                                        ),
                                  );
                                },
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('locationselect');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 247.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: wrapWithModel(
                                    model: _model.eventlistcompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: EventlistcompWidget(
                                      parameter1: widget.parameter1,
                                      parameter2: widget.parameter2,
                                    ),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('locationselect');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 341.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: wrapWithModel(
                                    model: _model.eventlistcompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: EventlistcompWidget(
                                      parameter1: widget.parameter1,
                                      parameter2: widget.parameter2,
                                    ),
                                  ),
                                ),
                              ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.mediumImpact();
                                      if (loggedIn) {
                                        if ((currentUserDisplayName != null &&
                                                currentUserDisplayName != '') &&
                                            (currentUserEmail != null &&
                                                currentUserEmail != '')) {
                                          context
                                              .pushNamed('S9_NR1_createEvent');
                                        } else {
                                          context
                                              .pushNamed('S8_NR2_editProfile');
                                        }
                                      } else {
                                        context.pushNamed('S1_Login_andSignUp');
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Container(
                                        width: 140.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              offset: Offset(
                                                0.0,
                                                0.0,
                                              ),
                                              spreadRadius: 0.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            width: 3.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'iislesy2' /* Create new event in your city */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ).addWalkthrough(
                                    containerT9gkvusa,
                                    _model.createEventController,
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.role, '') ==
                                      'Admin')
                                    AuthUserStreamWidget(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          HapticFeedback.mediumImpact();

                                          context.pushNamed(
                                              'S9_NR3_createArticle');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Container(
                                            width: 140.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  offset: Offset(
                                                    0.0,
                                                    0.0,
                                                  ),
                                                  spreadRadius: 0.0,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                width: 3.0,
                                              ),
                                            ),
                                            child: Visibility(
                                              visible: valueOrDefault(
                                                      currentUserDocument?.role,
                                                      '') ==
                                                  'Admin',
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cqenysv5' /* Create Article */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('test');
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Container(
                                        width: 140.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              offset: Offset(
                                                0.0,
                                                0.0,
                                              ),
                                              spreadRadius: 0.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            width: 3.0,
                                          ),
                                        ),
                                        child: Builder(
                                          builder: (context) => Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await Share.share(
                                                  'https://docs.google.com/forms/d/e/1FAIpQLSewtXcrbHI-OqeQAZohVlk9a20SVdg5eEZnZmVYPUKQKe16wQ/viewform?usp=sf_link',
                                                  sharePositionOrigin:
                                                      getWidgetBoundingBox(
                                                          context),
                                                );
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'daip9flv' /* Feedback */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  StreamBuilder<List<ArticlesRecord>>(
                                    stream: queryArticlesRecord(
                                      queryBuilder: (articlesRecord) =>
                                          articlesRecord.orderBy('date_updated',
                                              descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<ArticlesRecord>
                                          rowArticlesRecordList =
                                          snapshot.data!;
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            rowArticlesRecordList.length,
                                            (rowIndex) {
                                          final rowArticlesRecord =
                                              rowArticlesRecordList[rowIndex];
                                          return ArticleWidget(
                                            key: Key(
                                                'Keyzu2_${rowIndex}_of_${rowArticlesRecordList.length}'),
                                            article: rowArticlesRecord,
                                          );
                                        }).divide(SizedBox(width: 12.0)),
                                      );
                                    },
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 12.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'j19xfw2k' /* Invited Events */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 24.0),
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<PropertiesRecord>
                                      verticalListPropertiesRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        verticalListPropertiesRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 16.0),
                                    itemBuilder: (context, verticalListIndex) {
                                      final verticalListPropertiesRecord =
                                          verticalListPropertiesRecordList[
                                              verticalListIndex];
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: EventCWidget(
                                          key: Key(
                                              'Keydkq_${verticalListIndex}_of_${verticalListPropertiesRecordList.length}'),
                                          event: verticalListPropertiesRecord,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.createEventController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
