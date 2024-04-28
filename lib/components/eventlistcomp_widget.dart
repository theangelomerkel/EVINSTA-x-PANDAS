import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventlistcomp_model.dart';
export 'eventlistcomp_model.dart';

class EventlistcompWidget extends StatefulWidget {
  const EventlistcompWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final List<dynamic>? parameter1;
  final dynamic parameter2;

  @override
  State<EventlistcompWidget> createState() => _EventlistcompWidgetState();
}

class _EventlistcompWidgetState extends State<EventlistcompWidget> {
  late EventlistcompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventlistcompModel());

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
        final gridViewResidentResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final photos = getJsonField(
              gridViewResidentResponse.jsonBody,
              r'''$.data.eventListings.data[:].event.images[:].filename''',
            ).toList();
            return GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              scrollDirection: Axis.vertical,
              itemCount: photos.length,
              itemBuilder: (context, photosIndex) {
                final photosItem = photos[photosIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('locationselect');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      photosItem.toString(),
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
