import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/profile_user/profile_user_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'users_model.dart';
export 'users_model.dart';

class UsersWidget extends StatefulWidget {
  const UsersWidget({
    super.key,
    this.user,
  });

  final UsersRecord? user;

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}

class _UsersWidgetState extends State<UsersWidget> {
  late UsersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      if (!FFAppState()
                          .guestList
                          .contains(widget.user?.reference)) {
                        return FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderRadius: 2.0,
                          borderWidth: 1.0,
                          buttonSize: 25.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.check,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 14.0,
                          ),
                          onPressed: () async {
                            if (!FFAppState()
                                .guestList
                                .contains(widget.user?.reference)) {
                              setState(() {
                                FFAppState()
                                    .addToGuestList(widget.user!.reference);
                              });
                            }
                          },
                        );
                      } else {
                        return FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderRadius: 2.0,
                          borderWidth: 1.0,
                          buttonSize: 25.0,
                          icon: Icon(
                            Icons.check,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 14.0,
                          ),
                          onPressed: () async {
                            setState(() {
                              FFAppState()
                                  .removeFromGuestList(widget.user!.reference);
                            });
                          },
                        );
                      }
                    },
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: ProfileUserWidget(
                              user: widget.user!.reference,
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/giphy.gif',
                        ).image,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Visibility(
                      visible: widget.user?.photoUrl != null &&
                          widget.user?.photoUrl != '',
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: FlutterFlowExpandedImageView(
                                image: Image.network(
                                  widget.user!.photoUrl,
                                  fit: BoxFit.contain,
                                ),
                                allowRotation: false,
                                tag: widget.user!.photoUrl,
                                useHeroAnimation: true,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: widget.user!.photoUrl,
                          transitionOnUserGestures: true,
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              widget.user!.photoUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.user?.displayName != null &&
                              widget.user?.displayName != ''
                          ? valueOrDefault<String>(
                              widget.user?.displayName,
                              'user',
                            )
                          : valueOrDefault<String>(
                              widget.user?.email,
                              'mail@gmail.com',
                            ),
                      'user123',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).accent4,
          ),
        ],
      ),
    );
  }
}
