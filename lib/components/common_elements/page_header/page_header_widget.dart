import '/dms/home/settings/componenets/search_dialog/search_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_header_model.dart';
export 'page_header_model.dart';

class PageHeaderWidget extends StatefulWidget {
  /// Refer to all every header that needs to navigate back to the previous
  /// page; try to use this one for all pages that are the second pages.
  const PageHeaderWidget({
    super.key,
    required this.title,
    this.isNotifications,
  });

  final String? title;
  final bool? isNotifications;

  @override
  State<PageHeaderWidget> createState() => _PageHeaderWidgetState();
}

class _PageHeaderWidgetState extends State<PageHeaderWidget>
    with TickerProviderStateMixin {
  late PageHeaderModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageHeaderModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget!.isNotifications == true)
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 26.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('HEADER_arrow_back_rounded_ICN_ON_TAP');
                      context.safePop();
                    },
                  ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 5.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 10.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 15.0;
                              } else {
                                return 15.0;
                              }
                            }(),
                            0.0,
                          ),
                          15.0,
                          0.0,
                          15.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'title',
                        ),
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 15.0, 0.0, 15.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'header',
                        ),
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                  ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'fjdprc4d' /* Search */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.left,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 1.0,
                  tailBaseWidth: 25.0,
                  tailLength: 0.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      hoverIconColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.search_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 26.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('HEADER_search_outlined_ICN_ON_TAP');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          barrierColor: Color(0x1A000000),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: double.infinity,
                                child: SearchDialogWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'khh2x9ps' /* Notification */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.left,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 25.0,
                  tailLength: 0.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: badges.Badge(
                      badgeContent: Text(
                        FFAppState().notificationsCounts.toString(),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Colors.white,
                              fontSize: 6.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      showBadge: true,
                      shape: badges.BadgeShape.circle,
                      badgeColor: FlutterFlowTheme.of(context).primary,
                      elevation: 2.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                      position: badges.BadgePosition.topEnd(),
                      animationType: badges.BadgeAnimationType.scale,
                      toAnimate: true,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'PAGE_HEADER_COMP_Icon_xdc3yh5e_ON_TAP');

                          context.pushNamed(
                            'notification_page',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Icon(
                          Icons.notifications_none,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zk9s8orw' /* FAQ */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.right,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 25.0,
                  tailLength: 0.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      hoverIconColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.help_outline_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 26.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'HEADER_help_outline_rounded_ICN_ON_TAP');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          barrierColor: Color(0x1A000000),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: double.infinity,
                                child: SearchDialogWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
