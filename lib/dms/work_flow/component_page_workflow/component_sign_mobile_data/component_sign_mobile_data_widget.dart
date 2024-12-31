import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_mobile_data_model.dart';
export 'component_sign_mobile_data_model.dart';

class ComponentSignMobileDataWidget extends StatefulWidget {
  const ComponentSignMobileDataWidget({
    super.key,
    this.userId,
    this.date,
    this.receiveNO,
    this.description,
    this.validateDate,
    this.status,
    this.isRead,
    this.priority,
    this.sensitivity,
    String? sendNO,
  }) : this.sendNO = sendNO ?? '-';

  final String? userId;
  final DateTime? date;
  final String? receiveNO;
  final String? description;
  final DateTime? validateDate;
  final int? status;
  final bool? isRead;
  final int? priority;
  final int? sensitivity;
  final String sendNO;

  @override
  State<ComponentSignMobileDataWidget> createState() =>
      _ComponentSignMobileDataWidgetState();
}

class _ComponentSignMobileDataWidgetState
    extends State<ComponentSignMobileDataWidget> {
  late ComponentSignMobileDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignMobileDataModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 1.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              1.0,
            ),
          )
        ],
        border: Border.all(
          color: Colors.transparent,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!widget!.isRead!)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Icon(
                Icons.brightness_1_rounded,
                color: FlutterFlowTheme.of(context).primary,
                size: 18.0,
              ),
            ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FutureBuilder<List<UsersRow>>(
                          future: UsersTable().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'id',
                              widget!.userId,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 22.0,
                                  height: 22.0,
                                  child: SpinKitCircle(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    size: 22.0,
                                  ),
                                ),
                              );
                            }
                            List<UsersRow> textUsersRowList = snapshot.data!;

                            final textUsersRow = textUsersRowList.isNotEmpty
                                ? textUsersRowList.first
                                : null;

                            return Text(
                              valueOrDefault<String>(
                                textUsersRow?.username,
                                'Guest',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            );
                          },
                        ),
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'u00ru7rz' /* Date:   */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  dateTimeFormat(
                                    "d/M/y h:mm a",
                                    widget!.date,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 5.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'o1e1972s' /* Receive NO:   */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget!.receiveNO,
                                  '-',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'tj16znrn' /* Send NO:   */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget!.sendNO,
                                  '-',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'nypg9fxw' /* Description:   */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget!.description,
                                  '-',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          maxLines: 2,
                        ),
                        if (widget!.priority != 0)
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Icon(
                              Icons.priority_high_outlined,
                              color: () {
                                if (widget!.priority == 1) {
                                  return FlutterFlowTheme.of(context)
                                      .urgentPriority;
                                } else if (widget!.priority == 2) {
                                  return FlutterFlowTheme.of(context)
                                      .highPriority;
                                } else if (widget!.priority == 3) {
                                  return FlutterFlowTheme.of(context)
                                      .mediumPriority;
                                } else if (widget!.priority == 4) {
                                  return FlutterFlowTheme.of(context)
                                      .lowPriority;
                                } else {
                                  return FlutterFlowTheme.of(context).alternate;
                                }
                              }(),
                              size: 20.0,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '2n9qee3w' /* Validate Date:   */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  dateTimeFormat(
                                    "d/M/y h:mm a",
                                    widget!.validateDate,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              () {
                                if (widget!.status == 1) {
                                  return FlutterFlowTheme.of(context)
                                      .draftStatus;
                                } else if (widget!.status == 2) {
                                  return FlutterFlowTheme.of(context)
                                      .scheduledStatus;
                                } else if (widget!.status == 3) {
                                  return FlutterFlowTheme.of(context)
                                      .inProgressStatus;
                                } else if (widget!.status == 4) {
                                  return FlutterFlowTheme.of(context)
                                      .approvedStatus;
                                } else if (widget!.status == 5) {
                                  return FlutterFlowTheme.of(context)
                                      .rejectStatus;
                                } else if (widget!.status == 6) {
                                  return FlutterFlowTheme.of(context)
                                      .completedStatus;
                                } else if (widget!.status == 7) {
                                  return FlutterFlowTheme.of(context)
                                      .removeStatus;
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .primaryBackground;
                                }
                              }(),
                              FlutterFlowTheme.of(context).inProgressStatus,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                valueOrDefault<String>(
                                  () {
                                    if (widget!.status == 1) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Draft',
                                        kmText: 'ព្រាងទុក',
                                      );
                                    } else if (widget!.status == 2) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Schedule',
                                        kmText: 'កាលវិភាគ',
                                      );
                                    } else if (widget!.status == 3) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'In Progress',
                                        kmText: 'កំពុងដំណើរការ',
                                      );
                                    } else if (widget!.status == 4) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Approve',
                                        kmText: 'អនុម័ត',
                                      );
                                    } else if (widget!.status == 5) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Reject',
                                        kmText: 'បដិសេធ',
                                      );
                                    } else if (widget!.status == 6) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Complete',
                                        kmText: 'បញ្ចប់',
                                      );
                                    } else if (widget!.status == 7) {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Remove',
                                        kmText: 'លុប',
                                      );
                                    } else {
                                      return FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Other',
                                        kmText: 'ផ្សេងៗ',
                                      );
                                    }
                                  }(),
                                  'Status',
                                ),
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ].addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
      ),
    );
  }
}
