import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_action_timeline_model.dart';
export 'component_action_timeline_model.dart';

class ComponentActionTimelineWidget extends StatefulWidget {
  const ComponentActionTimelineWidget({
    super.key,
    bool? stepView,
    bool? stepSign,
    bool? stepApprove,
    bool? stepDecline,
    bool? viewed,
    bool? signed,
    bool? approved,
    bool? declined,
  })  : this.stepView = stepView ?? true,
        this.stepSign = stepSign ?? true,
        this.stepApprove = stepApprove ?? true,
        this.stepDecline = stepDecline ?? true,
        this.viewed = viewed ?? true,
        this.signed = signed ?? true,
        this.approved = approved ?? true,
        this.declined = declined ?? true;

  final bool stepView;
  final bool stepSign;
  final bool stepApprove;
  final bool stepDecline;
  final bool viewed;
  final bool signed;
  final bool approved;
  final bool declined;

  @override
  State<ComponentActionTimelineWidget> createState() =>
      _ComponentActionTimelineWidgetState();
}

class _ComponentActionTimelineWidgetState
    extends State<ComponentActionTimelineWidget> {
  late ComponentActionTimelineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentActionTimelineModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget!.stepView)
                    Stack(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 25.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: widget!.viewed == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : Color(0x00000000),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.eye,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (widget!.stepSign)
                    Container(
                      width: 80.0,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  if (widget!.stepSign)
                    Stack(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      children: [
                        Container(
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: widget!.signed == true
                                ? FlutterFlowTheme.of(context).primary
                                : Color(0x00000000),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.pencilAlt,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (widget!.stepApprove)
                    Container(
                      width: 80.0,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  if (widget!.stepApprove)
                    Stack(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      children: [
                        Container(
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: widget!.approved == true
                                ? FlutterFlowTheme.of(context).primary
                                : Color(0x00000000),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.check,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (widget!.stepDecline)
                    Container(
                      width: 80.0,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  if (widget!.stepDecline)
                    Stack(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      children: [
                        Container(
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: widget!.declined == true
                                ? FlutterFlowTheme.of(context).error
                                : Color(0x00000000),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (widget!.stepView)
                Text(
                  FFLocalizations.of(context).getText(
                    'lq8h9jax' /* View */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              if (widget!.stepView)
                Container(
                  width: 75.0,
                  height: 0.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              if (widget!.stepSign)
                Text(
                  FFLocalizations.of(context).getText(
                    'ujdgovg7' /* Sign */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              if (widget!.stepSign)
                Container(
                  width: 65.0,
                  height: 0.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              if (widget!.stepApprove)
                Text(
                  FFLocalizations.of(context).getText(
                    '6u6q6lsc' /* Approve */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              if (widget!.stepApprove)
                Container(
                  width: 50.0,
                  height: 0.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              if (widget!.stepDecline)
                Text(
                  FFLocalizations.of(context).getText(
                    'yzyl4y4p' /* Decline */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
