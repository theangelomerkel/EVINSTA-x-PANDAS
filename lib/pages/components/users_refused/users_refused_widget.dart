import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'users_refused_model.dart';
export 'users_refused_model.dart';

class UsersRefusedWidget extends StatefulWidget {
  const UsersRefusedWidget({
    super.key,
    this.user,
    required this.event,
  });

  final UsersRecord? user;
  final PropertiesRecord? event;

  @override
  State<UsersRefusedWidget> createState() => _UsersRefusedWidgetState();
}

class _UsersRefusedWidgetState extends State<UsersRefusedWidget> {
  late UsersRefusedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersRefusedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
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
                                    'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwcm9maWxlJTIwcGhvdG98ZW58MHx8fHwxNjg5NjYzMTEzfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'circleImageTag',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'circleImageTag',
                            transitionOnUserGestures: true,
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwcm9maWxlJTIwcGhvdG98ZW58MHx8fHwxNjg5NjYzMTEzfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
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
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ),
                    if (widget.event?.userRef == currentUserReference)
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.close_outlined,
                          color: FlutterFlowTheme.of(context).error,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          await widget.event!.reference.update({
                            ...mapToFirestore(
                              {
                                'refusedList': FieldValue.arrayRemove(
                                    [widget.user?.reference]),
                              },
                            ),
                          });
                        },
                      ),
                  ],
                ),
              ),
            ],
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
