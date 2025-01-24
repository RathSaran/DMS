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
import 'navigate_back_page_header_model.dart';
export 'navigate_back_page_header_model.dart';

class NavigateBackPageHeaderWidget extends StatefulWidget {
  /// Refer to all every header that needs to navigate back to the previous
  /// page; try to use this one for all pages that are the second pages.
  const NavigateBackPageHeaderWidget({
    super.key,
    this.previousPage,
    required this.title,
  });

  final String? previousPage;
  final String? title;

  @override
  State<NavigateBackPageHeaderWidget> createState() =>
      _NavigateBackPageHeaderWidgetState();
}

class _NavigateBackPageHeaderWidgetState
    extends State<NavigateBackPageHeaderWidget> with TickerProviderStateMixin {
  late NavigateBackPageHeaderModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigateBackPageHeaderModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 5.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 10.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 15.0;
              } else {
                return 15.0;
              }
            }(),
            0.0,
          ),
          0.0,
          15.0,
          0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            opaque: true,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('NAVIGATE_BACK_HEADER_Row_p6mxulu2_ON_TAP');
                context.safePop();
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'NAVIGATE_BACK_HEADER_Icon_qeyshkag_ON_TA');
                      context.safePop();
                      FFAppState().deleteUserOrganizations();
                      FFAppState().userOrganizations = [];

                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: FFAppState().globalColor,
                      size: 26.0,
                    ),
                  ),
                ],
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.navigateBackHovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.navigateBackHovered = false);
            }),
          ),
          if (responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 0.0, 15.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.title,
                    'header',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 15.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.title,
                    'header',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
              ),
            ),
          AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '8hg594rv' /* Search */,
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
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 1.0,
            tailBaseWidth: 25.0,
            tailLength: 0.0,
            waitDuration: Duration(milliseconds: 0),
            showDuration: Duration(milliseconds: 0),
            triggerMode: TooltipTriggerMode.tap,
            child: Builder(
              builder: (context) => Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
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
                    logFirebaseEvent(
                        'NAVIGATE_BACK_HEADER_search_outlined_ICN');
                    await showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: SearchDialogWidget(),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'rwtaxhmb' /* Notification */,
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
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 25.0,
            tailLength: 0.0,
            waitDuration: Duration(milliseconds: 0),
            showDuration: Duration(milliseconds: 0),
            triggerMode: TooltipTriggerMode.tap,
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
              elevation: 4.0,
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              position: badges.BadgePosition.topEnd(),
              animationType: badges.BadgeAnimationType.scale,
              toAnimate: true,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('NAVIGATE_BACK_HEADER_Icon_qnizombh_ON_TA');

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
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
          AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'moz7cl4j' /* FAQ */,
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
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 25.0,
            tailLength: 0.0,
            waitDuration: Duration(milliseconds: 0),
            showDuration: Duration(milliseconds: 0),
            triggerMode: TooltipTriggerMode.tap,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
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
                  logFirebaseEvent('NAVIGATE_BACK_HEADER_help_outline_rounde');
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
    );
  }
}
