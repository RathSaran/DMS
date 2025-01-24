import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'h_g_wehave_model.dart';
export 'h_g_wehave_model.dart';

class HGWehaveWidget extends StatefulWidget {
  const HGWehaveWidget({super.key});

  @override
  State<HGWehaveWidget> createState() => _HGWehaveWidgetState();
}

class _HGWehaveWidgetState extends State<HGWehaveWidget> {
  late HGWehaveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HGWehaveModel());

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
      height: 134.0,
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
                width: 171.0,
                height: 259.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.home,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '2klhssko' /* Home */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              Container(
                width: 171.0,
                height: 259.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.domain,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'a6dr6jjk' /* Document */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              Container(
                width: 171.0,
                height: 259.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.signature,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'socpkv19' /* Sign */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              Container(
                width: 171.0,
                height: 259.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.report,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '7torjdqe' /* Report */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              Container(
                width: 171.0,
                height: 259.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.settings_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'wutwklwd' /* Setting */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
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
