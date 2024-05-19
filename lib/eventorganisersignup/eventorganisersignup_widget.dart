import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventorganisersignup_model.dart';
export 'eventorganisersignup_model.dart';

class EventorganisersignupWidget extends StatefulWidget {
  const EventorganisersignupWidget({super.key});

  @override
  State<EventorganisersignupWidget> createState() =>
      _EventorganisersignupWidgetState();
}

class _EventorganisersignupWidgetState
    extends State<EventorganisersignupWidget> {
  late EventorganisersignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventorganisersignupModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'ele5fezt' /* Event Organizer Signup */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF15161E),
                        fontSize: 32.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Outfit'),
                      ),
                ),
                TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'f343ki5f' /* First Name */,
                    ),
                    hintText: FFLocalizations.of(context).getText(
                      '2bcifpui' /* Enter your first name */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6F61EF),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF15161E),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap()
                            .containsKey('Plus Jakarta Sans'),
                      ),
                  validator:
                      _model.textController1Validator.asValidator(context),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        '32rvwykq' /* Last Name */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        '3da9mgfi' /* Enter your last name */,
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF15161E),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey('Plus Jakarta Sans'),
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: TextFormField(
                    controller: _model.emailTextController,
                    focusNode: _model.textFieldFocusNode3,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        '5fhgyura' /* Email */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        '5cl6klye' /* Enter your email */,
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF15161E),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey('Plus Jakarta Sans'),
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                    keyboardType: TextInputType.emailAddress,
                    validator: _model.emailTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: TextFormField(
                    controller: _model.passwordTextController,
                    focusNode: _model.textFieldFocusNode4,
                    autofocus: false,
                    obscureText: !_model.passwordVisibility,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'wotcxnpz' /* Password */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        '3jpjgwui' /* Enter your password */,
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF15161E),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey('Plus Jakarta Sans'),
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => _model.passwordVisibility =
                              !_model.passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF606A85),
                          size: 22.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                    validator: _model.passwordTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: TextFormField(
                    controller: _model.textController3,
                    focusNode: _model.textFieldFocusNode5,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        '6zq62w1f' /* Company/Organization Name */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'g0dolbbv' /* Enter your company name */,
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF15161E),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey('Plus Jakarta Sans'),
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                    validator:
                        _model.textController3Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: TextFormField(
                    controller: _model.textController4,
                    focusNode: _model.textFieldFocusNode6,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'l1uypjcq' /* Event Type Preferences */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'ofpj3408' /* Enter event types */,
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF15161E),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey('Plus Jakarta Sans'),
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                    validator:
                        _model.textController4Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();

                      final user = await authManager.createAccountWithEmail(
                        context,
                        _model.emailTextController.text,
                        _model.passwordTextController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      await UsersRecord.collection
                          .doc(user.uid)
                          .update(createUsersRecordData(
                            email: FFAppState().email,
                            createdTime: getCurrentTimestamp,
                          ));

                      context.goNamedAuth('S2_HomePage', context.mounted);
                    },
                    text: FFLocalizations.of(context).getText(
                      'o3uqdz9b' /* Sign Up */,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 55.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF6F61EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey('Plus Jakarta Sans'),
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'vzs6av7n' /* Already have an account?  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF15161E),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap()
                                  .containsKey('Plus Jakarta Sans'),
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'qbb92n98' /* Sign In */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF6F61EF),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap()
                                  .containsKey('Plus Jakarta Sans'),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
