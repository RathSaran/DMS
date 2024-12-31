import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'darkand_light_model.dart';
export 'darkand_light_model.dart';

class DarkandLightWidget extends StatefulWidget {
  const DarkandLightWidget({super.key});

  @override
  State<DarkandLightWidget> createState() => _DarkandLightWidgetState();
}

class _DarkandLightWidgetState extends State<DarkandLightWidget>
    with TickerProviderStateMixin {
  late DarkandLightModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkandLightModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 15.0),
      child: Wrap(
        spacing: 15.0,
        runSpacing: 15.0,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.start,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 322.0,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Color(0x4D9489F5)
                        : Color(0xFFF1F4F8),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Color(0xFF6F61EF)
                          : Color(0xFFE5E7EB),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'DARKAND_LIGHT_Container_cb5wm95d_ON_TAP');
                        setDarkModeSetting(context, ThemeMode.dark);
                      },
                      child: Container(
                        width: 310.0,
                        height: 230.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF1B1D27),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 12.0, 8.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3d0lcrrt' /* Dark Mode */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (Theme.of(context).brightness ==
                                        Brightness.dark)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Icon(
                                          Icons.check_circle_rounded,
                                          color: Color(0xFF6F61EF),
                                          size: 32.0,
                                        ).animateOnPageLoad(animationsMap[
                                            'iconOnPageLoadAnimation1']!),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 110.0,
                                height: 160.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2A3137),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 12.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 70.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xD81D2429),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                            ),
                                            Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF6F61EF),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xD81D2429),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xD81D2429),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 322.0,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Color(0x4D9489F5)
                        : Color(0xFFF1F4F8),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Color(0xFF6F61EF)
                          : Color(0xFFE5E7EB),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'DARKAND_LIGHT_Container_jhu7hytj_ON_TAP');
                        setDarkModeSetting(context, ThemeMode.light);
                      },
                      child: Container(
                        width: 310.0,
                        height: 230.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 12.0, 8.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'l1cknn5w' /* Light Mode */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF1B1D27),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (Theme.of(context).brightness ==
                                        Brightness.light)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Icon(
                                          Icons.check_circle_rounded,
                                          color: Color(0xFF6F61EF),
                                          size: 32.0,
                                        ).animateOnPageLoad(animationsMap[
                                            'iconOnPageLoadAnimation2']!),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 110.0,
                                height: 160.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDBE2E7),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 12.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 70.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                            ),
                                            Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF6F61EF),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 322.0,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Color(0x4D9489F5)
                        : Color(0xFFF1F4F8),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Color(0xFF6F61EF)
                          : Color(0xFFE5E7EB),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'DARKAND_LIGHT_Container_wuq3m6hf_ON_TAP');
                        setDarkModeSetting(context, ThemeMode.system);
                      },
                      child: Container(
                        width: 310.0,
                        height: 230.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF1B1D27),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 12.0, 8.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'o8bs549v' /* System Mode */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        color: Color(0xFF6F61EF),
                                        size: 32.0,
                                      ).animateOnPageLoad(animationsMap[
                                          'iconOnPageLoadAnimation3']!),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 110.0,
                                height: 160.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDBE2E7),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 12.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 70.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                            ),
                                            Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF6F61EF),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
