import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventlist_model.dart';
export 'eventlist_model.dart';

class EventlistWidget extends StatefulWidget {
  const EventlistWidget({super.key});

  @override
  State<EventlistWidget> createState() => _EventlistWidgetState();
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        fadeInDuration: Duration(milliseconds: 500),
        fadeOutDuration: Duration(milliseconds: 500),
        imageUrl: '',
        width: 300.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
