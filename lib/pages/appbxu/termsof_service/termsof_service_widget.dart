import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termsof_service_model.dart';
export 'termsof_service_model.dart';

class TermsofServiceWidget extends StatefulWidget {
  const TermsofServiceWidget({Key? key}) : super(key: key);

  @override
  _TermsofServiceWidgetState createState() => _TermsofServiceWidgetState();
}

class _TermsofServiceWidgetState extends State<TermsofServiceWidget> {
  late TermsofServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsofServiceModel());

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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/EVI_Logo.png',
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 0.0,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Terms of Service\n\nWelcome to Evinsta, please read these Terms of Use (\"Terms\") carefully as they contain important information about your legal rights, remedies, and obligations. By accessing or using our Evinsta, you agree to comply with and be bound by these Terms.\n\n1. ACCEPTANCE OF TERMS\n\nBy downloading, accessing or using Evinsta, you represent that you have read, understood, and agreed to be bound by these Terms. If you do not agree to these Terms, please do not use or access Evinsta.\n\n2. PRIVACY\n\nOur Privacy Policy describes our practices concerning data that you provide or that we may collect about you through Evinsta, and you consent to our use of data in compliance with the Privacy Policy.\n\n3. USE OF THE SERVICES\n\nYou agree to use our services only for purposes that are permitted by (a) the Terms and (b) any applicable law, regulation or generally accepted practices in the relevant jurisdictions.\n\n4. USER CONTENT\n\nBy posting, uploading, inputting, providing or submitting your content, you are granting Evinsta, its affiliated companies and necessary sublicensees permission to use your content in connection with the operation of their Internet businesses including, without limitation, the rights to copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your content.\n\n5. INTELLECTUAL PROPERTY\n\nAll intellectual property rights in Evinsta belong to us or our licensors. Except as expressly set out in these Terms, you have no rights in respect of any intellectual property rights belonging to us or our licensors.\n\n6. TERMINATION\n\nWe may terminate your access to and use of Evinsta, at our sole discretion, at any time and without notice to you.\n\n7. LIMITATION OF LIABILITY\n\nIn no event will Evinsta be liable for any direct, indirect, incidental, special, consequential or punitive damages resulting from your access to or use of, or inability to access or use, the services, whether based on warranty, contract, tort (including negligence), statute or any other legal theory.\n\n8. CHANGES TO THE TERMS\n\nWe reserve the right to modify these Terms at any time. If we make changes to these Terms, we will provide notice of such changes. Your continued use of [App Name] following the posting of any changes constitutes acceptance of those changes.\n\n9. GOVERNING LAW AND JURISDICTION\n\nThese Terms are governed by the laws of Germany, without regard to its conflict of laws principles. You and Evinsta agree to submit to the exclusive jurisdiction of Germany to resolve any dispute arising out of these Terms or Evinsta.\n\n10. CONTACT US\n\nIf you have any questions about these Terms, please contact us at evinsta@gmail.com.\n\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 6.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 0.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 4.0, 4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms of Services Link',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF090F13),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            buttonSize: 46.0,
                            icon: Icon(
                              Icons.chevron_right_rounded,
                              color: Color(0xFF95A1AC),
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
