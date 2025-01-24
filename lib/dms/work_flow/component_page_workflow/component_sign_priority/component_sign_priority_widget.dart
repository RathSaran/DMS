import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_priority_model.dart';
export 'component_sign_priority_model.dart';

class ComponentSignPriorityWidget extends StatefulWidget {
  const ComponentSignPriorityWidget({
    super.key,
    this.priority,
    this.sensitivity,
  });

  final int? priority;
  final int? sensitivity;

  @override
  State<ComponentSignPriorityWidget> createState() =>
      _ComponentSignPriorityWidgetState();
}

class _ComponentSignPriorityWidgetState
    extends State<ComponentSignPriorityWidget> {
  late ComponentSignPriorityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignPriorityModel());

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
      constraints: BoxConstraints(
        maxHeight: 40.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'ykf8h2vy' /* Priority:   */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      TextSpan(
                        text: valueOrDefault<String>(
                          () {
                            if (widget!.priority == 1) {
                              return 'Urgent';
                            } else if (widget!.priority == 2) {
                              return 'High';
                            } else if (widget!.priority == 3) {
                              return 'Medium';
                            } else if (widget!.priority == 4) {
                              return 'Low';
                            } else {
                              return 'Normal';
                            }
                          }(),
                          '-',
                        ),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  maxLines: 1,
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'r1gito5v' /* Sensitivity:   */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      TextSpan(
                        text: () {
                          if (widget!.sensitivity == 1) {
                            return 'Normal';
                          } else if (widget!.sensitivity == 2) {
                            return 'Personal';
                          } else if (widget!.sensitivity == 3) {
                            return 'Private';
                          } else if (widget!.sensitivity == 4) {
                            return 'Confidential';
                          } else {
                            return 'Free';
                          }
                        }(),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
