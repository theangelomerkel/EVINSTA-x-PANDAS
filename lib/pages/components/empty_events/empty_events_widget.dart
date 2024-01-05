import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'empty_events_model.dart';
export 'empty_events_model.dart';

class EmptyEventsWidget extends StatefulWidget {
  const EmptyEventsWidget({super.key});

  @override
  _EmptyEventsWidgetState createState() => _EmptyEventsWidgetState();
}

class _EmptyEventsWidgetState extends State<EmptyEventsWidget> {
  late EmptyEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyEventsModel());

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
            child: Text(
              'No events in this date',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Urbanist',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              if (loggedIn) {
                if ((currentUserDisplayName != '') &&
                    (currentUserEmail != '')) {
                  context.pushNamed('S9_NR1_createEvent');
                } else {
                  context.pushNamed('S8_NR2_editProfile');
                }
              } else {
                context.pushNamed('S1_Login_andSignUp');
              }
            },
            text: 'Add event',
            options: FFButtonOptions(
              width: double.infinity,
              height: 42.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).secondary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Urbanist',
                    color: Colors.white,
                  ),
              elevation: 1.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}