import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'youtube_model.dart';
export 'youtube_model.dart';

class YoutubeWidget extends StatefulWidget {
  const YoutubeWidget({
    super.key,
    String? videoLOAD,
  }) : this.videoLOAD = videoLOAD ?? 'true';

  final String videoLOAD;

  @override
  State<YoutubeWidget> createState() => _YoutubeWidgetState();
}

class _YoutubeWidgetState extends State<YoutubeWidget> {
  late YoutubeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YoutubeModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'bgl7e9q5' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Urbanist'),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: GridView(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            scrollDirection: Axis.vertical,
            children: [
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-e697aa30',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-8c758eae',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-d8f06a40',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-1b271c27',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-2c1068bc',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-952c4f14',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-da2ce56d',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-43bbad1e',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-89110446',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-f41189cf',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-8a005841',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-e2adf5b7',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-211774f8',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-55ea8a14',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-b4952258',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-c9b6f507',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-8426b295',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://soundcloud.com/alexander-von-hohnhorst/alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
                  metas: Metas(
                    id: 'alles-wird-gut-brutalismus-3000-unreleased-1?si=639b0f9cf760407fbdc6fde0fe53833e&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing-c3cbd9f7',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context)
                    .titleLarge
                    .override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
