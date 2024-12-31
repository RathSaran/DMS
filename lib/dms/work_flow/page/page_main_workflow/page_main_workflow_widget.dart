import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_all_m_s_g/component_sign_d_t_all_m_s_g_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_draft/component_sign_d_t_draft_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_inbox/component_sign_d_t_inbox_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_priority/component_sign_d_t_priority_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_send/component_sign_d_t_send_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_trash/component_sign_d_t_trash_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_filter_message/component_sign_filter_message_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_inbox_action/component_sign_inbox_action_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_mobile_data/component_sign_mobile_data_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_tab_setting/component_sign_tab_setting_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_upload_doc_action/component_sign_upload_doc_action_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_main_workflow_model.dart';
export 'page_main_workflow_model.dart';

class PageMainWorkflowWidget extends StatefulWidget {
  const PageMainWorkflowWidget({
    super.key,
    bool? isSeenEmail,
    int? tabIndex,
  })  : this.isSeenEmail = isSeenEmail ?? false,
        this.tabIndex = tabIndex ?? 0;

  final bool isSeenEmail;
  final int tabIndex;

  @override
  State<PageMainWorkflowWidget> createState() => _PageMainWorkflowWidgetState();
}

class _PageMainWorkflowWidgetState extends State<PageMainWorkflowWidget>
    with TickerProviderStateMixin {
  late PageMainWorkflowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageMainWorkflowModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PageMainWorkflow'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MAIN_WORKFLOW_PageMainWorkflow_ON_INIT_S');
      _model.queryCheckOL = await FolderTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'type',
              'file',
            )
            .eqOrNull(
              'tabs',
              () {
                if (_model.tabBarCurrentIndex == 0) {
                  return 1;
                } else if (_model.tabBarCurrentIndex == 1) {
                  return 2;
                } else if (_model.tabBarCurrentIndex == 2) {
                  return 3;
                } else if (_model.tabBarCurrentIndex == 3) {
                  return 4;
                } else if (_model.tabBarCurrentIndex == 4) {
                  return 5;
                } else {
                  return 6;
                }
              }(),
            )
            .eqOrNull(
              'received_by',
              currentUserUid,
            )
            .eqOrNull(
              'trash',
              false,
            ),
      );
      if (_model.queryCheck != null && (_model.queryCheck)!.isNotEmpty) {
        _model.isEmptyMessage = false;
        safeSetState(() {});
      } else {
        _model.isEmptyMessage = true;
        safeSetState(() {});
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 6,
      initialIndex: min(
          valueOrDefault<int>(
            widget!.tabIndex,
            0,
          ),
          5),
    )..addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            wrapWithModel(
              model: _model.sidebarModel,
              updateCallback: () => safeSetState(() {}),
              child: SidebarWidget(
                iconOne: Icon(
                  Icons.dashboard_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconTwo: Icon(
                  Icons.done_all_outlined,
                  color: FlutterFlowTheme.of(context).primary,
                ),
                iconThree: Icon(
                  Icons.stacked_bar_chart_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconFour: Icon(
                  Icons.settings_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                colorBgOne: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgTwo: FlutterFlowTheme.of(context).primaryBackground,
                colorBgThree: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgFour: FlutterFlowTheme.of(context).secondaryBackground,
                textOne: FlutterFlowTheme.of(context).secondaryText,
                textTwo: FlutterFlowTheme.of(context).primaryText,
                textThree: FlutterFlowTheme.of(context).secondaryText,
                textFour: FlutterFlowTheme.of(context).secondaryText,
                iconFive: Icon(
                  Icons.folder_open_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                colorBgFive: FlutterFlowTheme.of(context).secondaryBackground,
                textFive: FlutterFlowTheme.of(context).secondaryText,
                bgColor6: FlutterFlowTheme.of(context).secondaryBackground,
                icon6: Icon(
                  Icons.supervisor_account_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                text6: FlutterFlowTheme.of(context).secondaryText,
              ),
            ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 1370.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: double.infinity,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  wrapWithModel(
                    model: _model.pageHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PageHeaderWidget(
                      title: FFLocalizations.of(context).getText(
                        'xt78qb5p' /* Document Flow */,
                      ),
                      isNotifications: false,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      MouseRegion(
                                        opaque: false,
                                        cursor: MouseCursor.defer ??
                                            MouseCursor.defer,
                                        child: Builder(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MAIN_WORKFLOW_ContainerUpload_ON_TAP');
                                              await showAlignedDialog(
                                                barrierColor:
                                                    Colors.transparent,
                                                context: context,
                                                isGlobal: false,
                                                avoidOverflow: true,
                                                targetAnchor:
                                                    AlignmentDirectional(
                                                            0.0, 1.0)
                                                        .resolve(
                                                            Directionality.of(
                                                                context)),
                                                followerAnchor:
                                                    AlignmentDirectional(
                                                            0.0, -1.0)
                                                        .resolve(
                                                            Directionality.of(
                                                                context)),
                                                builder: (dialogContext) {
                                                  return Material(
                                                    color: Colors.transparent,
                                                    child: Container(
                                                      width: 350.0,
                                                      child:
                                                          ComponentSignUploadDocActionWidget(),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: 350.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color: _model
                                                        .mouseRegionHovered!
                                                    ? Color(0x93E0E3E7)
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                border: Border.all(
                                                  color: Color(0x7F6F61EF),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(6.0),
                                                        child: Icon(
                                                          Icons.upload_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 40.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k99rewqt' /* Upload */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.expand_more,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 26.0,
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        onEnter: ((event) async {
                                          safeSetState(() =>
                                              _model.mouseRegionHovered = true);
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered = false);
                                        }),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: AlignedTooltip(
                                                      content: Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hfqaznug' /* Filter */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      offset: 4.0,
                                                      preferredDirection:
                                                          AxisDirection.right,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      elevation: 4.0,
                                                      tailBaseWidth: 25.0,
                                                      tailLength: 0.0,
                                                      waitDuration: Duration(
                                                          milliseconds: 0),
                                                      showDuration: Duration(
                                                          milliseconds: 0),
                                                      triggerMode:
                                                          TooltipTriggerMode
                                                              .tap,
                                                      child: Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 50.0,
                                                            hoverIconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            icon: Icon(
                                                              Icons
                                                                  .filter_alt_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 26.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'MAIN_WORKFLOW_IconFilter_ON_TAP');
                                                              await showAlignedDialog(
                                                                barrierColor: Colors
                                                                    .transparent,
                                                                context:
                                                                    context,
                                                                isGlobal: false,
                                                                avoidOverflow:
                                                                    true,
                                                                targetAnchor:
                                                                    AlignmentDirectional(
                                                                            -1.0,
                                                                            1.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                followerAnchor:
                                                                    AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    child:
                                                                        ComponentSignFilterMessageWidget(),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: AlignedTooltip(
                                                      content: Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xwc7vfe1' /* Tab Setting */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      offset: 4.0,
                                                      preferredDirection:
                                                          AxisDirection.right,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      elevation: 4.0,
                                                      tailBaseWidth: 25.0,
                                                      tailLength: 0.0,
                                                      waitDuration: Duration(
                                                          milliseconds: 0),
                                                      showDuration: Duration(
                                                          milliseconds: 0),
                                                      triggerMode:
                                                          TooltipTriggerMode
                                                              .tap,
                                                      child: Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 50.0,
                                                            hoverIconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            icon: Icon(
                                                              Icons
                                                                  .tab_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 26.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'MAIN_WORKFLOW_IconHideShowColum_ON_TAP');
                                                              await showAlignedDialog(
                                                                barrierColor: Colors
                                                                    .transparent,
                                                                context:
                                                                    context,
                                                                isGlobal: false,
                                                                avoidOverflow:
                                                                    true,
                                                                targetAnchor:
                                                                    AlignmentDirectional(
                                                                            -1.0,
                                                                            1.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                followerAnchor:
                                                                    AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    child:
                                                                        ComponentSignTabSettingWidget(),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Flexible(
                                                      child: AlignedTooltip(
                                                        content: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'c23vkdbg' /* ViewType */,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        offset: 4.0,
                                                        preferredDirection:
                                                            AxisDirection.right,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        elevation: 4.0,
                                                        tailBaseWidth: 25.0,
                                                        tailLength: 0.0,
                                                        waitDuration: Duration(
                                                            milliseconds: 0),
                                                        showDuration: Duration(
                                                            milliseconds: 0),
                                                        triggerMode:
                                                            TooltipTriggerMode
                                                                .tap,
                                                        child: Container(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 50.0,
                                                            hoverIconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            icon: Icon(
                                                              Icons
                                                                  .view_comfortable,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 26.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed: () {
                                                              print(
                                                                  'IconTypeView pressed ...');
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment(-1.0, 0),
                                              child: TabBar(
                                                isScrollable: true,
                                                labelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                unselectedLabelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                unselectedLabelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                indicatorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                tabs: [
                                                  Tab(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'i4h1zt2x' /* Inbox */,
                                                    ),
                                                  ),
                                                  Tab(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'bd8n50oz' /* Send out */,
                                                    ),
                                                  ),
                                                  Tab(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      's2ch3rl9' /* Priority */,
                                                    ),
                                                  ),
                                                  Tab(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'exd3vmgg' /* Drafts */,
                                                    ),
                                                  ),
                                                  Tab(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'sryqqstp' /* Trash */,
                                                    ),
                                                  ),
                                                  Tab(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'vdgb7yhn' /* All */,
                                                    ),
                                                  ),
                                                ],
                                                controller:
                                                    _model.tabBarController,
                                                onTap: (i) async {
                                                  [
                                                    () async {
                                                      logFirebaseEvent(
                                                          'PAGE_MAIN_WORKFLOW_PAGE_TabInbox_ON_TAP');
                                                      _model.queryCheck =
                                                          await FolderTable()
                                                              .queryRows(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'type',
                                                              'file',
                                                            )
                                                            .eqOrNull(
                                                              'tabs',
                                                              () {
                                                                if (_model
                                                                        .tabBarCurrentIndex ==
                                                                    0) {
                                                                  return 1;
                                                                } else if (_model
                                                                        .tabBarCurrentIndex ==
                                                                    1) {
                                                                  return 2;
                                                                } else if (_model
                                                                        .tabBarCurrentIndex ==
                                                                    2) {
                                                                  return 3;
                                                                } else if (_model
                                                                        .tabBarCurrentIndex ==
                                                                    3) {
                                                                  return 4;
                                                                } else if (_model
                                                                        .tabBarCurrentIndex ==
                                                                    4) {
                                                                  return 5;
                                                                } else {
                                                                  return 6;
                                                                }
                                                              }(),
                                                            )
                                                            .eqOrNull(
                                                              'received_by',
                                                              currentUserUid,
                                                            )
                                                            .eqOrNull(
                                                              'trash',
                                                              false,
                                                            ),
                                                      );
                                                      if (_model.queryCheck !=
                                                              null &&
                                                          (_model.queryCheck)!
                                                              .isNotEmpty) {
                                                        _model.isEmptyMessage =
                                                            false;
                                                        safeSetState(() {});
                                                      } else {
                                                        _model.isEmptyMessage =
                                                            true;
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {}
                                                  ][i]();
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                controller:
                                                    _model.tabBarController,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .componentSignDTInboxModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ComponentSignDTInboxWidget(
                                                        currentTabbar: _model
                                                            .tabBarCurrentIndex,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .componentSignDTSendModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ComponentSignDTSendWidget(
                                                        currentTabbar: _model
                                                            .tabBarCurrentIndex,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .componentSignDTPriorityModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ComponentSignDTPriorityWidget(
                                                        currentTabbar: _model
                                                            .tabBarCurrentIndex,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .componentSignDTDraftModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ComponentSignDTDraftWidget(
                                                        currentTabbar: _model
                                                            .tabBarCurrentIndex,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .componentSignDTTrashModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ComponentSignDTTrashWidget(
                                                        currentTabbar: _model
                                                            .tabBarCurrentIndex,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .componentSignDTAllMSGModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ComponentSignDTAllMSGWidget(
                                                        currentTabbar: _model
                                                            .tabBarCurrentIndex,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Builder(
                                                builder: (context) => Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'MAIN_WORKFLOW_ContainerUpload_ON_TAP');
                                                      await showAlignedDialog(
                                                        barrierColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        isGlobal: false,
                                                        avoidOverflow: true,
                                                        targetAnchor:
                                                            AlignmentDirectional(
                                                                    0.0, 1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        followerAnchor:
                                                            AlignmentDirectional(
                                                                    0.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        builder:
                                                            (dialogContext) {
                                                          return Material(
                                                            color: Colors
                                                                .transparent,
                                                            child: Container(
                                                              width: 200.0,
                                                              child:
                                                                  ComponentSignUploadDocActionWidget(
                                                                isScanAble:
                                                                    false,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 200.0,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x7F6F61EF),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            6.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .upload_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 30.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '4mq11kpo' /* Upload */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.expand_more,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 26.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Color(0x7F6F61EF),
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 60.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                icon: Icon(
                                                  Icons
                                                      .document_scanner_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 36.0,
                                                ),
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'PAGE_MAIN_WORKFLOW_PAGE_btnScan_ON_TAP');
                                                  _model.scan =
                                                      await FlutterBarcodeScanner
                                                          .scanBarcode(
                                                    '#C62828', // scanning line color
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ms2zfr07' /* Close */,
                                                    ), // cancel button text
                                                    true, // whether to show the flash icon
                                                    ScanMode.QR,
                                                  );

                                                  context.pushNamed(
                                                    'PageWorkflowProcess',
                                                    queryParameters: {
                                                      'isDocUpload':
                                                          serializeParam(
                                                        true,
                                                        ParamType.bool,
                                                      ),
                                                      'docUploaded':
                                                          serializeParam(
                                                        _model.scan,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );

                                                  safeSetState(() {});
                                                },
                                              ),
                                              Expanded(
                                                flex: 34,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 38.0,
                                                        hoverIconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        icon: Icon(
                                                          Icons.tab_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 22.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'MAIN_WORKFLOW_IconHideShowColum_ON_TAP');
                                                          await showAlignedDialog(
                                                            barrierColor: Colors
                                                                .transparent,
                                                            context: context,
                                                            isGlobal: false,
                                                            avoidOverflow: true,
                                                            targetAnchor:
                                                                AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                            followerAnchor:
                                                                AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                            builder:
                                                                (dialogContext) {
                                                              return Material(
                                                                color: Colors
                                                                    .transparent,
                                                                child:
                                                                    Container(
                                                                  width: 250.0,
                                                                  child:
                                                                      ComponentSignTabSettingWidget(),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: ListView(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5.0),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'MAIN_WORKFLOW_contInboxMB_ON_TAP');
                                                    _model.messageDetail = 1;
                                                    _model.labelName = 'Inbox';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 1.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            1.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .mail_outline_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 26.0,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ttez5d0a' /* Inbox */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .chevron_right_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ]
                                                          .divide(SizedBox(
                                                              width: 10.0))
                                                          .around(SizedBox(
                                                              width: 10.0)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 1.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          1.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.send_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 26.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3c56sgrz' /* Send Out */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .chevron_right_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 10.0))
                                                        .around(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 1.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          1.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.push_pin_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 26.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qqhq6m7p' /* Priority */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .chevron_right_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 10.0))
                                                        .around(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 1.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          1.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.drafts_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 26.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'urwc5kdn' /* Draft */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .chevron_right_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 10.0))
                                                        .around(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'PAGE_MAIN_WORKFLOW_PAGE_contAllMB_ON_TAP');
                                                    _model.messageDetail = 5;
                                                    _model.labelName = 'All';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 1.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            1.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .mark_email_read_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 26.0,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '5cfo3hch' /* All */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .chevron_right_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ]
                                                          .divide(SizedBox(
                                                              width: 10.0))
                                                          .around(SizedBox(
                                                              width: 10.0)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 1.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          1.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .delete_forever_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        size: 26.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '86sq7c9z' /* Trash */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .chevron_right_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 10.0))
                                                        .around(SizedBox(
                                                            width: 10.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 15.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.messageDetail > 0)
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3.0, 0.0, 3.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MAIN_WORKFLOW_contHeader_ON_TAP');
                                              _model.messageDetail = 0;
                                              safeSetState(() {});
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
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
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.chevron_left_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 26.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.labelName,
                                                        'All',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        SizedBox(width: 10.0))
                                                    .addToStart(
                                                        SizedBox(width: 15.0)),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                if (_model.messageDetail == 1)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FutureBuilder<
                                                        List<FolderRow>>(
                                                      future: FolderTable()
                                                          .queryRows(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'type',
                                                              'file',
                                                            )
                                                            .eqOrNull(
                                                              'tabs',
                                                              1,
                                                            )
                                                            .eqOrNull(
                                                              'received_by',
                                                              currentUserUid,
                                                            )
                                                            .eqOrNull(
                                                              'trash',
                                                              false,
                                                            )
                                                            .order(
                                                                'received_date'),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<FolderRow>
                                                            listViewFolderRowList =
                                                            snapshot.data!;

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewFolderRowList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewFolderRow =
                                                                listViewFolderRowList[
                                                                    listViewIndex];
                                                            return Builder(
                                                              builder:
                                                                  (context) =>
                                                                      Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'MAIN_WORKFLOW_Container_vpmfu886_ON_TAP');
                                                                    await FolderTable()
                                                                        .update(
                                                                      data: {
                                                                        'is_read':
                                                                            true,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eqOrNull(
                                                                        'id',
                                                                        listViewFolderRow
                                                                            .id,
                                                                      ),
                                                                    );

                                                                    context
                                                                        .pushNamed(
                                                                      'PagePreviewDocument',
                                                                      queryParameters:
                                                                          {
                                                                        'docName':
                                                                            serializeParam(
                                                                          listViewFolderRow
                                                                              .fileName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'docURL':
                                                                            serializeParam(
                                                                          listViewFolderRow
                                                                              .pathUrl,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'tabindex':
                                                                            serializeParam(
                                                                          0,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  onLongPress:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'MAIN_WORKFLOW_Container_vpmfu886_ON_LONG');
                                                                    await showAlignedDialog(
                                                                      barrierColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      isGlobal:
                                                                          false,
                                                                      avoidOverflow:
                                                                          true,
                                                                      targetAnchor: AlignmentDirectional(
                                                                              0.0,
                                                                              1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      followerAnchor: AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                250.0,
                                                                            child:
                                                                                ComponentSignInboxActionWidget(
                                                                              docSelectedId: listViewFolderRow.pathUrl!,
                                                                              currentTabIndex: 0,
                                                                              docName: listViewFolderRow.fileName,
                                                                              msgDescription: listViewFolderRow.msgDescriptios,
                                                                              receiveNum: listViewFolderRow.receiveNumber,
                                                                              sendNum: listViewFolderRow.sentNumber,
                                                                              documentId: listViewFolderRow.id,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .componentSignMobileDataModels1
                                                                        .getModel(
                                                                      listViewFolderRow
                                                                          .id
                                                                          .toString(),
                                                                      listViewIndex,
                                                                    ),
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ComponentSignMobileDataWidget(
                                                                      key: Key(
                                                                        'Keyvpm_${listViewFolderRow.id.toString()}',
                                                                      ),
                                                                      userId: listViewFolderRow
                                                                          .userId,
                                                                      receiveNO:
                                                                          listViewFolderRow
                                                                              .receiveNumber,
                                                                      description:
                                                                          listViewFolderRow
                                                                              .msgDescriptios,
                                                                      status: listViewFolderRow
                                                                          .status,
                                                                      isRead: listViewFolderRow
                                                                          .isRead,
                                                                      priority:
                                                                          listViewFolderRow
                                                                              .priority,
                                                                      sensitivity:
                                                                          listViewFolderRow
                                                                              .sensitivity,
                                                                      date: listViewFolderRow
                                                                          .receivedDate,
                                                                      validateDate:
                                                                          listViewFolderRow
                                                                              .validateDate,
                                                                      sendNO: listViewFolderRow
                                                                          .sentNumber,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                if (_model.messageDetail == 5)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FutureBuilder<
                                                        List<FolderRow>>(
                                                      future: FolderTable()
                                                          .queryRows(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'type',
                                                              'file',
                                                            )
                                                            .eqOrNull(
                                                              'active',
                                                              true,
                                                            )
                                                            .eqOrNull(
                                                              'user_id',
                                                              currentUserUid,
                                                            )
                                                            .order(
                                                                'created_at'),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<FolderRow>
                                                            listViewFolderRowList =
                                                            snapshot.data!;

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewFolderRowList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewFolderRow =
                                                                listViewFolderRowList[
                                                                    listViewIndex];
                                                            return Builder(
                                                              builder:
                                                                  (context) =>
                                                                      Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'MAIN_WORKFLOW_Container_bjaxhwk1_ON_TAP');
                                                                    await FolderTable()
                                                                        .update(
                                                                      data: {
                                                                        'is_read':
                                                                            true,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eqOrNull(
                                                                        'id',
                                                                        listViewFolderRow
                                                                            .id,
                                                                      ),
                                                                    );

                                                                    context
                                                                        .pushNamed(
                                                                      'PagePreviewDocument',
                                                                      queryParameters:
                                                                          {
                                                                        'docName':
                                                                            serializeParam(
                                                                          listViewFolderRow
                                                                              .fileName,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'docURL':
                                                                            serializeParam(
                                                                          listViewFolderRow
                                                                              .pathUrl,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'tabindex':
                                                                            serializeParam(
                                                                          5,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  onLongPress:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'MAIN_WORKFLOW_Container_bjaxhwk1_ON_LONG');
                                                                    await showAlignedDialog(
                                                                      barrierColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      isGlobal:
                                                                          false,
                                                                      avoidOverflow:
                                                                          true,
                                                                      targetAnchor: AlignmentDirectional(
                                                                              0.0,
                                                                              1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      followerAnchor: AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                250.0,
                                                                            child:
                                                                                ComponentSignInboxActionWidget(
                                                                              docSelectedId: listViewFolderRow.pathUrl!,
                                                                              currentTabIndex: 5,
                                                                              docName: listViewFolderRow.fileName,
                                                                              msgDescription: listViewFolderRow.msgDescriptios,
                                                                              receiveNum: listViewFolderRow.receiveNumber,
                                                                              sendNum: listViewFolderRow.sentNumber,
                                                                              documentId: listViewFolderRow.id,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .componentSignMobileDataModels2
                                                                        .getModel(
                                                                      listViewFolderRow
                                                                          .id
                                                                          .toString(),
                                                                      listViewIndex,
                                                                    ),
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ComponentSignMobileDataWidget(
                                                                      key: Key(
                                                                        'Keybja_${listViewFolderRow.id.toString()}',
                                                                      ),
                                                                      userId: listViewFolderRow
                                                                          .userId,
                                                                      receiveNO:
                                                                          listViewFolderRow
                                                                              .receiveNumber,
                                                                      description:
                                                                          listViewFolderRow
                                                                              .msgDescriptios,
                                                                      status: listViewFolderRow
                                                                          .status,
                                                                      isRead: listViewFolderRow
                                                                          .isRead,
                                                                      priority:
                                                                          listViewFolderRow
                                                                              .priority,
                                                                      sensitivity:
                                                                          listViewFolderRow
                                                                              .sensitivity,
                                                                      date: listViewFolderRow
                                                                          .receivedDate,
                                                                      validateDate:
                                                                          listViewFolderRow
                                                                              .validateDate,
                                                                      sendNO: listViewFolderRow
                                                                          .sentNumber,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 3.0)),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.paginationPanelModel,
                        updateCallback: () => safeSetState(() {}),
                        child: PaginationPanelWidget(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
