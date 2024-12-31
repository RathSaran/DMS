import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_card_view_report_model.dart';
export 'component_card_view_report_model.dart';

class ComponentCardViewReportWidget extends StatefulWidget {
  const ComponentCardViewReportWidget({super.key});

  @override
  State<ComponentCardViewReportWidget> createState() =>
      _ComponentCardViewReportWidgetState();
}

class _ComponentCardViewReportWidgetState
    extends State<ComponentCardViewReportWidget> {
  late ComponentCardViewReportModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCardViewReportModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
      child: Container(
        width: 250.0,
        height: 210.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'f4l36299' /* Reports Staff of 2024 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xlxxii8v' /* In folder E-Power */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'jtxrrkgw' /* Rady Peterson */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.mail_outlined,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '3gbzt7gu' /* seanghai.hin@oone.bz */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'n3xc3qvs' /* seanhai.hin */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.date_range_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'w0sm3671' /* 12 Aug 2024 */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.outlined_flag_rounded,
                          color: FlutterFlowTheme.of(context).error,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'broxe0jd' /* Priority */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                  ].divide(SizedBox(height: 2.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
