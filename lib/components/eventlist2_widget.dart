import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventlist2_model.dart';
export 'eventlist2_model.dart';

class Eventlist2Widget extends StatefulWidget {
  const Eventlist2Widget({super.key});

  @override
  State<Eventlist2Widget> createState() => _Eventlist2WidgetState();
}

class _Eventlist2WidgetState extends State<Eventlist2Widget> {
  late Eventlist2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Eventlist2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        final horizontalListResidentResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final userEvents = getJsonField(
              horizontalListResidentResponse.jsonBody,
              r'''$.data.eventListings.data[:].event.images[:].filename''',
            ).toList();
            return ListView.separated(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: userEvents.length,
              separatorBuilder: (_, __) => SizedBox(width: 12.0),
              itemBuilder: (context, userEventsIndex) {
                final userEventsItem = userEvents[userEventsIndex];
                return Container(width: 100, height: 100, color: Colors.green);
              },
            );
          },
        );
      },
    );
  }
}
