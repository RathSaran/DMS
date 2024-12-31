import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'h_g_features_model.dart';
export 'h_g_features_model.dart';

class HGFeaturesWidget extends StatefulWidget {
  const HGFeaturesWidget({super.key});

  @override
  State<HGFeaturesWidget> createState() => _HGFeaturesWidgetState();
}

class _HGFeaturesWidgetState extends State<HGFeaturesWidget> {
  late HGFeaturesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HGFeaturesModel());

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
      width: MediaQuery.sizeOf(context).width * 4.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 297.0,
                height: 299.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.local_cafe_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'o2x2seho' /* Reliability & Stability */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        's0dfziju' /* Focused on zero down time serv... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              Container(
                width: 297.0,
                height: 299.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.security_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'mm73ruut' /* Security */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '9b0lylxi' /* We treat security as a first c... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              Container(
                width: 297.0,
                height: 299.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.design_services,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'ijrb8pwo' /* Design */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'f1gafm4q' /* Turn your ideas into outstandi... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
            ]
                .divide(SizedBox(width: 40.0))
                .addToStart(SizedBox(width: 40.0))
                .addToEnd(SizedBox(width: 40.0)),
          ),
        ],
      ),
    );
  }
}
