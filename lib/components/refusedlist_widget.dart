import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/users_refused/users_refused_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'refusedlist_model.dart';
export 'refusedlist_model.dart';

class RefusedlistWidget extends StatefulWidget {
  const RefusedlistWidget({
    super.key,
    this.parameter2,
  });

  final PropertiesRecord? parameter2;

  @override
  State<RefusedlistWidget> createState() => _RefusedlistWidgetState();
}

class _RefusedlistWidgetState extends State<RefusedlistWidget> {
  late RefusedlistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefusedlistModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.parameter2?.userRef == currentUserReference,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          color: FlutterFlowTheme.of(context).secondaryBackground,
          child: ExpandableNotifier(
            controller: _model.expandableExpandableController,
            child: ExpandablePanel(
              header: Text(
                'Refusedlist (${valueOrDefault<String>(
                  widget.parameter2?.refusedList?.length?.toString(),
                  '0',
                )})',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Urbanist',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              collapsed: Container(),
              expanded: Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.parameter2!.refusedList.length > 0)
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final refused =
                                widget.parameter2?.refusedList?.toList() ?? [];
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: refused.length,
                              itemBuilder: (context, refusedIndex) {
                                final refusedItem = refused[refusedIndex];
                                return StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(refusedItem),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final usersRefusedUsersRecord =
                                        snapshot.data!;
                                    return UsersRefusedWidget(
                                      key: Key(
                                          'Keyxrj_${refusedIndex}_of_${refused.length}'),
                                      user: usersRefusedUsersRecord,
                                      event: widget.parameter2!,
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
              theme: ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: true,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: true,
                iconColor: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
