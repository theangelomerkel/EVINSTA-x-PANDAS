import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventlist_model.dart';
export 'eventlist_model.dart';

class EventlistWidget extends StatefulWidget {
  const EventlistWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final bool? parameter1;

  @override
  _EventlistWidgetState createState() => _EventlistWidgetState();
}

class _EventlistWidgetState extends State<EventlistWidget> {
  late EventlistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventlistModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: ResidentCall.call(),
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
        final textResidentResponse = snapshot.data!;
        return Text(
          valueOrDefault<String>(
            (ResidentCall.eventname(
              textResidentResponse.jsonBody,
            ) as List)
                .map<String>((s) => s.toString())
                .toList()
                ?.contains((ResidentCall.eventname(
                  textResidentResponse.jsonBody,
                ) as List)
                    .map<String>((s) => s.toString())
                    .toList()
                    ?.first)
                ?.toString(),
            'test event',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
        );
      },
    );
  }
}
