import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'event_c_model.dart';
export 'event_c_model.dart';

class EventCWidget extends StatefulWidget {
  const EventCWidget({
    super.key,
    required this.event,
  });

  final PropertiesRecord? event;

  @override
  _EventCWidgetState createState() => _EventCWidgetState();
}

class _EventCWidgetState extends State<EventCWidget>
    with TickerProviderStateMixin {
  late EventCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventCModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            HapticFeedback.selectionClick();

            context.pushNamed(
              'S3EventData_IntroPage',
              queryParameters: {
                'doc': serializeParam(
                  widget.event,
                  ParamType.Document,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                'doc': widget.event,
              },
            );
          },
          child: Container(
            width: double.infinity,
            height: 160.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8.0,
                  color: Color(0x230F1113),
                  offset: Offset(0.0, 4.0),
                )
              ],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                valueOrDefault<String>(
                  widget.event?.mainImage,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/evi02-axv84o/assets/c5d28ps8gfy9/Rectangle_10.png',
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/images/error_image.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 12.0, 8.0, 8.0),
            child: Text(
              widget.event!.propertyName,
              style: FlutterFlowTheme.of(context).titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}
