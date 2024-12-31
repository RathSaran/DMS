import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/component_add_new_doc/component_add_new_doc_widget.dart';
import '/dms/documents/component_of_documents/component_card_view_file/component_card_view_file_widget.dart';
import '/dms/documents/component_of_documents/component_card_view_folder/component_card_view_folder_widget.dart';
import '/dms/documents/component_of_documents/component_filter_documents/component_filter_documents_widget.dart';
import '/dms/documents/component_of_documents/component_option_documents/component_option_documents_widget.dart';
import '/dms/documents/component_of_documents/component_option_floder/component_option_floder_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_documents_model.dart';
export 'page_documents_model.dart';

class PageDocumentsWidget extends StatefulWidget {
  const PageDocumentsWidget({
    super.key,
    this.allTab,
    this.subFileId,
    this.subFolderId,
  });

  final int? allTab;
  final List<int>? subFileId;
  final List<int>? subFolderId;

  @override
  State<PageDocumentsWidget> createState() => _PageDocumentsWidgetState();
}

class _PageDocumentsWidgetState extends State<PageDocumentsWidget>
    with TickerProviderStateMixin {
  late PageDocumentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageDocumentsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PageDocuments'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DOCUMENTS_PageDocuments_ON_INIT_STATE');
      _model.folders = await FolderTable().queryRows(
        queryFn: (q) => q,
      );
      _model.subFolder = await SubfolderTable().queryRows(
        queryFn: (q) => q,
      );
      _model.files = await FilesTable().queryRows(
        queryFn: (q) => q,
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: min(
          valueOrDefault<int>(
            widget!.allTab,
            0,
          ),
          3),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  key: ValueKey('sidebar_5ytp'),
                  iconOne: Icon(
                    key: ValueKey('sidebar_5ytp'),
                    Icons.dashboard_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  iconTwo: Icon(
                    key: ValueKey('sidebar_5ytp'),
                    Icons.done_all_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  iconThree: Icon(
                    key: ValueKey('sidebar_5ytp'),
                    Icons.stacked_bar_chart_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  iconFour: Icon(
                    key: ValueKey('sidebar_5ytp'),
                    Icons.settings_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  colorBgOne: FlutterFlowTheme.of(context).secondaryBackground,
                  colorBgTwo: FlutterFlowTheme.of(context).secondaryBackground,
                  colorBgThree:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  colorBgFour: FlutterFlowTheme.of(context).secondaryBackground,
                  textOne: FlutterFlowTheme.of(context).secondaryText,
                  textTwo: FlutterFlowTheme.of(context).secondaryText,
                  textThree: FlutterFlowTheme.of(context).secondaryText,
                  textFour: FlutterFlowTheme.of(context).secondaryText,
                  iconFive: Icon(
                    key: ValueKey('sidebar_5ytp'),
                    Icons.folder_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  colorBgFive: FlutterFlowTheme.of(context).primaryBackground,
                  textFive: FlutterFlowTheme.of(context).primaryText,
                  bgColor6: FlutterFlowTheme.of(context).secondaryBackground,
                  icon6: Icon(
                    key: ValueKey('sidebar_5ytp'),
                    Icons.supervisor_account_outlined,
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
                    wrapWithModel(
                      model: _model.pageHeaderModel,
                      updateCallback: () => safeSetState(() {}),
                      child: PageHeaderWidget(
                        key: ValueKey('PageHeader_llvu'),
                        title: FFLocalizations.of(context).getText(
                          'gdov02bf' /* Documents */,
                        ),
                        isNotifications: false,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: MouseRegion(
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
                                                'DOCUMENTS_ContainerUpload_ON_TAP');
                                            await showAlignedDialog(
                                              barrierColor: Colors.transparent,
                                              context: context,
                                              isGlobal: false,
                                              avoidOverflow: false,
                                              targetAnchor:
                                                  AlignmentDirectional(0.0, 1.0)
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
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Container(
                                                      width: 350.0,
                                                      child:
                                                          ComponentAddNewDocWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            key: ValueKey(
                                                'ContainerUpload_h44d'),
                                            width: 350.0,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.mouseRegionHovered!
                                                    ? Color(0x93E0E3E7)
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
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
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(6.0),
                                                        child: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 40.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fsl77xe1' /* New */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
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
                                                        SizedBox(width: 5.0))
                                                    .addToEnd(
                                                        SizedBox(width: 5.0)),
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
                                        safeSetState(() =>
                                            _model.mouseRegionHovered = false);
                                      }),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: AlignedTooltip(
                                            content: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3yfub21r' /* Filter */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            offset: 4.0,
                                            preferredDirection:
                                                AxisDirection.right,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 4.0,
                                            tailBaseWidth: 25.0,
                                            tailLength: 0.0,
                                            waitDuration:
                                                Duration(milliseconds: 0),
                                            showDuration:
                                                Duration(milliseconds: 0),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) =>
                                                    FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 50.0,
                                                  hoverIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  icon: Icon(
                                                    Icons.filter_alt_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 26.0,
                                                  ),
                                                  showLoadingIndicator: true,
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'PAGE_DOCUMENTS_PAGE_IconFilter_ON_TAP');
                                                    showAlignedDialog(
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      isGlobal: false,
                                                      avoidOverflow: false,
                                                      targetAnchor:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      followerAnchor:
                                                          AlignmentDirectional(
                                                                  1.0, -1.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      builder: (dialogContext) {
                                                        return Material(
                                                          color: Colors
                                                              .transparent,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Container(
                                                              height: 300.0,
                                                              width: 400.0,
                                                              child:
                                                                  ComponentFilterDocumentsWidget(),
                                                            ),
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
                                        Flexible(
                                          child: AlignedTooltip(
                                            content: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7k055vec' /* Show/HideColumn */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            offset: 4.0,
                                            preferredDirection:
                                                AxisDirection.right,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 4.0,
                                            tailBaseWidth: 25.0,
                                            tailLength: 0.0,
                                            waitDuration:
                                                Duration(milliseconds: 0),
                                            showDuration:
                                                Duration(milliseconds: 0),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 50.0,
                                              hoverIconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              icon: Icon(
                                                Icons.list_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 26.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'DOCUMENTS_IconHideShowColum_ON_TAP');
                                                if (_model.isList) {
                                                  _model.isList = false;
                                                  safeSetState(() {});
                                                } else {
                                                  _model.isList = true;
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
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
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
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
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            indicatorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            tabs: [
                                              Tab(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'vtpqtkiz' /* My Folder  */,
                                                ),
                                              ),
                                              Tab(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '9hyxjmkj' /* Shared with me */,
                                                ),
                                              ),
                                              Tab(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'ucbrwb23' /* Favorites */,
                                                ),
                                              ),
                                              Tab(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '4a69aa7c' /* Trash */,
                                                ),
                                                iconMargin: EdgeInsets.all(8.0),
                                              ),
                                            ],
                                            controller: _model.tabBarController,
                                            onTap: (i) async {
                                              [
                                                () async {
                                                  logFirebaseEvent(
                                                      'PAGE_DOCUMENTS_PAGE_MyFolder_ON_TAP');
                                                  _model.parentPath =
                                                      'documents/';
                                                  safeSetState(() {});
                                                },
                                                () async {
                                                  logFirebaseEvent(
                                                      'PAGE_DOCUMENTS_PAGE_Sharewithme_ON_TAP');
                                                  _model.parentPath =
                                                      'documents/';
                                                  safeSetState(() {});
                                                },
                                                () async {
                                                  logFirebaseEvent(
                                                      'PAGE_DOCUMENTS_PAGE_Favorite_ON_TAP');
                                                  _model.parentPath =
                                                      'documents/';
                                                  safeSetState(() {});
                                                },
                                                () async {
                                                  logFirebaseEvent(
                                                      'PAGE_DOCUMENTS_PAGE_Trash_ON_TAP');
                                                  _model.parentPath =
                                                      'documents/';
                                                  safeSetState(() {});
                                                }
                                              ][i]();
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            controller: _model.tabBarController,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (_model.isList == false)
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: ListView(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PAGE_DOCUMENTS_PAGE_Text_2i5hk5w3_ON_TAP');
                                                                      _model.parentPath =
                                                                          'documents/';
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'nvpv1o4l' /* My Folder */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                FutureBuilder<
                                                                    List<
                                                                        FolderRow>>(
                                                                  future: FolderTable()
                                                                      .queryRows(
                                                                    queryFn: (q) => q
                                                                        .eqOrNull(
                                                                          'type',
                                                                          'folder',
                                                                        )
                                                                        .eqOrNull(
                                                                          'parent_path',
                                                                          _model
                                                                              .parentPath,
                                                                        )
                                                                        .eqOrNull(
                                                                          'trash',
                                                                          false,
                                                                        )
                                                                        .eqOrNull(
                                                                          'share_with',
                                                                          false,
                                                                        )
                                                                        .eqOrNull(
                                                                          'user_id',
                                                                          currentUserUid,
                                                                        ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<FolderRow>
                                                                        wrapFolderRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return Wrap(
                                                                      spacing:
                                                                          15.0,
                                                                      runSpacing:
                                                                          15.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: List.generate(
                                                                          wrapFolderRowList
                                                                              .length,
                                                                          (wrapIndex) {
                                                                        final wrapFolderRow =
                                                                            wrapFolderRowList[wrapIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onDoubleTap:
                                                                              () async {
                                                                            logFirebaseEvent('DOCUMENTS_Container_7gp1vvgi_ON_DOUBLE_T');
                                                                            _model.parentPath =
                                                                                '${_model.parentPath}${wrapFolderRow.name}/';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              ComponentCardViewFolderWidget(
                                                                            key:
                                                                                Key('Key7gp_${wrapIndex}_of_${wrapFolderRowList.length}'),
                                                                            folderName:
                                                                                valueOrDefault<String>(
                                                                              wrapFolderRow.name,
                                                                              'Report',
                                                                            ),
                                                                            colorIcon:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            folderId:
                                                                                wrapFolderRow.id,
                                                                          ),
                                                                        );
                                                                      }),
                                                                    );
                                                                  },
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'o111dyl2' /* File */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    FutureBuilder<
                                                                        List<
                                                                            FolderRow>>(
                                                                      future: FolderTable()
                                                                          .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eqOrNull(
                                                                              'type',
                                                                              'file',
                                                                            )
                                                                            .eqOrNull(
                                                                              'parent_path',
                                                                              _model.parentPath,
                                                                            )
                                                                            .eqOrNull(
                                                                              'share_with',
                                                                              false,
                                                                            )
                                                                            .eqOrNull(
                                                                              'trash',
                                                                              false,
                                                                            )
                                                                            .eqOrNull(
                                                                              'user_id',
                                                                              currentUserUid,
                                                                            ),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Image
                                                                              .asset(
                                                                            '',
                                                                          );
                                                                        }
                                                                        List<FolderRow>
                                                                            wrapFolderRowList =
                                                                            snapshot.data!;

                                                                        return Wrap(
                                                                          spacing:
                                                                              15.0,
                                                                          runSpacing:
                                                                              15.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: List.generate(
                                                                              wrapFolderRowList.length,
                                                                              (wrapIndex) {
                                                                            final wrapFolderRow =
                                                                                wrapFolderRowList[wrapIndex];
                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onDoubleTap: () async {
                                                                                logFirebaseEvent('DOCUMENTS_Container_1v7lwlq9_ON_DOUBLE_T');
                                                                                await launchURL(wrapFolderRow.pathUrl!);
                                                                              },
                                                                              child: ComponentCardViewFileWidget(
                                                                                key: Key('Key1v7_${wrapIndex}_of_${wrapFolderRowList.length}'),
                                                                                fileName: valueOrDefault<String>(
                                                                                  wrapFolderRow.name,
                                                                                  '-',
                                                                                ),
                                                                                fileUrl: valueOrDefault<String>(
                                                                                  wrapFolderRow.pathUrl,
                                                                                  'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/folder/1728389806864000.pdf',
                                                                                ),
                                                                                folderId: wrapFolderRow.id,
                                                                              ),
                                                                            );
                                                                          }),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.isList == true)
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, -1.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          AlignedTooltip(
                                                                        content:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(4.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '3479p09t' /* Back */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            0.0,
                                                                        waitDuration:
                                                                            Duration(milliseconds: 0),
                                                                        showDuration:
                                                                            Duration(milliseconds: 0),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('PAGE_DOCUMENTS_PAGE_Text_8au97cvl_ON_TAP');
                                                                            _model.parentPath =
                                                                                'documents/';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'sgo1mrr8' /* My Folder */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                  decoration: TextDecoration.underline,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            10.0),
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Theme(
                                                                      data:
                                                                          ThemeData(
                                                                        checkboxTheme:
                                                                            CheckboxThemeData(
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        unselectedWidgetColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                      ),
                                                                      child:
                                                                          Checkbox(
                                                                        value: _model.checkboxValue1 ??=
                                                                            true,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          safeSetState(() =>
                                                                              _model.checkboxValue1 = newValue!);
                                                                        },
                                                                        side:
                                                                            BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                        activeColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        checkColor:
                                                                            FlutterFlowTheme.of(context).info,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            30.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            46.0,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '08jtfjl2' /* Name */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.swap_vert_outlined,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '2j4tk4sk' /* Owner */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 1,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'p73x0o3b' /* LastModify */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'jj43cwgq' /* FileSize */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              0.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0.0),
                                                                    ),
                                                                  ),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          FolderRow>>(
                                                                    future: FolderTable()
                                                                        .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'parent_path',
                                                                            _model.parentPath,
                                                                          )
                                                                          .eqOrNull(
                                                                            'user_id',
                                                                            currentUserUid,
                                                                          )
                                                                          .eqOrNull(
                                                                            'share_with',
                                                                            false,
                                                                          )
                                                                          .eqOrNull(
                                                                            'trash',
                                                                            false,
                                                                          )
                                                                          .order('type'),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<FolderRow>
                                                                          listViewFolderRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            listViewFolderRowList.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                listViewIndex) {
                                                                          final listViewFolderRow =
                                                                              listViewFolderRowList[listViewIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                1.0),
                                                                            child:
                                                                                Container(
                                                                              width: 100.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 0.0,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                    offset: Offset(
                                                                                      0.0,
                                                                                      1.0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                  bottomRight: Radius.circular(0.0),
                                                                                  topLeft: Radius.circular(0.0),
                                                                                  topRight: Radius.circular(0.0),
                                                                                ),
                                                                              ),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  logFirebaseEvent('DOCUMENTS_Row_5hiqk8hn_ON_DOUBLE_TAP');
                                                                                  if (listViewFolderRow.type == 'folder') {
                                                                                    _model.parentPath = '${listViewFolderRow.parentPath}${listViewFolderRow.name}/';
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    await launchURL(listViewFolderRow.pathUrl!);
                                                                                  }
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Theme(
                                                                                      data: ThemeData(
                                                                                        checkboxTheme: CheckboxThemeData(
                                                                                          visualDensity: VisualDensity.compact,
                                                                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(4.0),
                                                                                          ),
                                                                                        ),
                                                                                        unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      child: Checkbox(
                                                                                        value: _model.checkboxValueMap2[listViewFolderRow] ??= false,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.checkboxValueMap2[listViewFolderRow] = newValue!);
                                                                                        },
                                                                                        side: BorderSide(
                                                                                          width: 2,
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                        ),
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        checkColor: FlutterFlowTheme.of(context).info,
                                                                                      ),
                                                                                    ),
                                                                                    Flexible(
                                                                                      child: Builder(
                                                                                        builder: (context) => FlutterFlowIconButton(
                                                                                          key: ValueKey(listViewIndex.toString()),
                                                                                          borderColor: Colors.transparent,
                                                                                          borderRadius: 30.0,
                                                                                          borderWidth: 1.0,
                                                                                          buttonSize: 44.0,
                                                                                          icon: Icon(
                                                                                            Icons.more_vert,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                          onPressed: () async {
                                                                                            logFirebaseEvent('PAGE_DOCUMENTS_PAGE_more_vert_ICN_ON_TAP');
                                                                                            if (listViewFolderRow.type == 'folder') {
                                                                                              showAlignedDialog(
                                                                                                barrierColor: Colors.transparent,
                                                                                                context: context,
                                                                                                isGlobal: false,
                                                                                                avoidOverflow: true,
                                                                                                targetAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                followerAnchor: AlignmentDirectional(-1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                builder: (dialogContext) {
                                                                                                  return Material(
                                                                                                    color: Colors.transparent,
                                                                                                    child: GestureDetector(
                                                                                                      onTap: () {
                                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                      },
                                                                                                      child: Container(
                                                                                                        width: 300.0,
                                                                                                        child: ComponentOptionFloderWidget(
                                                                                                          folderId: listViewFolderRow.id,
                                                                                                          folderName: listViewFolderRow.name,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              );
                                                                                            } else {
                                                                                              showAlignedDialog(
                                                                                                barrierColor: Colors.transparent,
                                                                                                context: context,
                                                                                                isGlobal: false,
                                                                                                avoidOverflow: true,
                                                                                                targetAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                followerAnchor: AlignmentDirectional(-1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                builder: (dialogContext) {
                                                                                                  return Material(
                                                                                                    color: Colors.transparent,
                                                                                                    child: GestureDetector(
                                                                                                      onTap: () {
                                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                      },
                                                                                                      child: Container(
                                                                                                        width: 300.0,
                                                                                                        child: ComponentOptionDocumentsWidget(
                                                                                                          folderId: listViewFolderRow.id,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              );
                                                                                            }
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 2,
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (listViewFolderRow.type == 'folder')
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.folder,
                                                                                                color: () {
                                                                                                  if (listViewFolderRow.colorCode == '#aed6f1') {
                                                                                                    return Color(0xFFAED6F1);
                                                                                                  } else if (listViewFolderRow.colorCode == '#abebc6') {
                                                                                                    return Color(0xFFABEBC6);
                                                                                                  } else if (listViewFolderRow.colorCode == '#fad7a0') {
                                                                                                    return Color(0xFFFAD7A0);
                                                                                                  } else if (listViewFolderRow.colorCode == '#f5b7b1') {
                                                                                                    return Color(0xFFF5B7B1);
                                                                                                  } else if (listViewFolderRow.colorCode == '#5dade2') {
                                                                                                    return Color(0xFF5DADE2);
                                                                                                  } else if (listViewFolderRow.colorCode == '#58d68d') {
                                                                                                    return Color(0xFF58D68D);
                                                                                                  } else if (listViewFolderRow.colorCode == '#f5b041') {
                                                                                                    return Color(0xFFF5B041);
                                                                                                  } else if (listViewFolderRow.colorCode == '#ec7063') {
                                                                                                    return Color(0xFFEC7063);
                                                                                                  } else if (listViewFolderRow.colorCode == '#2e86c1') {
                                                                                                    return Color(0xFF2E86C1);
                                                                                                  } else if (listViewFolderRow.colorCode == '#28b463') {
                                                                                                    return Color(0xFF28B463);
                                                                                                  } else if (listViewFolderRow.colorCode == '#d68910') {
                                                                                                    return Color(0xFFD68910);
                                                                                                  } else if (listViewFolderRow.colorCode == '#cb4335') {
                                                                                                    return Color(0xFFCB4335);
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).primary;
                                                                                                  }
                                                                                                }(),
                                                                                                size: 24.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (listViewFolderRow.type == 'file')
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.picture_as_pdf,
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                          ))
                                                                                            Expanded(
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewFolderRow.name,
                                                                                                  'reports',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 2,
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                                                child: Image.network(
                                                                                                  valueOrDefault<String>(
                                                                                                    listViewFolderRow.userProfile,
                                                                                                    'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                  ),
                                                                                                  width: 32.0,
                                                                                                  height: 32.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        listViewFolderRow.username,
                                                                                                        'Guest',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        listViewFolderRow.role != null ? 'General' : 'Admin',
                                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              letterSpacing: 0.0,
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
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Expanded(
                                                                                        flex: 1,
                                                                                        child: Text(
                                                                                          dateTimeFormat(
                                                                                            "dd/MM/yyyy hh:mm a",
                                                                                            listViewFolderRow.createdAt,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Expanded(
                                                                                        child: Text(
                                                                                          '${formatNumber(
                                                                                            listViewFolderRow.size,
                                                                                            formatType: FormatType.custom,
                                                                                            format: '##.##',
                                                                                            locale: '',
                                                                                          )} ${listViewFolderRow.unit}',
                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.nullFolder ==
                                                      false)
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/undraw_my_files_swob.png',
                                                                  width: 200.0,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'expql791' /* No File or Folder here! */,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '5bmqbyg0' /* Click "New" button to Upload f... */,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.isList == true)
                                                    wrapWithModel(
                                                      model: _model
                                                          .paginationPanelModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          PaginationPanelWidget(),
                                                    ),
                                                ].addToStart(
                                                    SizedBox(height: 5.0)),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
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
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if (_model.isList == false)
                                                      Flexible(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        15.0,
                                                                        15.0,
                                                                        0.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PAGE_DOCUMENTS_PAGE_Text_c5icg0w9_ON_TAP');
                                                                        _model.parentPath =
                                                                            'documents/';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '9fs33upp' /* Share with me */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  FutureBuilder<
                                                                      List<
                                                                          FolderRow>>(
                                                                    future: FolderTable()
                                                                        .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'parent_path',
                                                                            _model.parentPath,
                                                                          )
                                                                          .eqOrNull(
                                                                            'share_with',
                                                                            true,
                                                                          )
                                                                          .eqOrNull(
                                                                            'type',
                                                                            'folder',
                                                                          )
                                                                          .eqOrNull(
                                                                            'trash',
                                                                            false,
                                                                          )
                                                                          .order('name'),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<FolderRow>
                                                                          wrapFolderRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Wrap(
                                                                        spacing:
                                                                            15.0,
                                                                        runSpacing:
                                                                            15.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: List.generate(
                                                                            wrapFolderRowList.length,
                                                                            (wrapIndex) {
                                                                          final wrapFolderRow =
                                                                              wrapFolderRowList[wrapIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onDoubleTap:
                                                                                () async {
                                                                              logFirebaseEvent('DOCUMENTS_Container_ekx2h2rk_ON_DOUBLE_T');
                                                                              _model.parentPath = '${_model.parentPath}${wrapFolderRow.name}/';
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                ComponentCardViewFolderWidget(
                                                                              key: Key('Keyekx_${wrapIndex}_of_${wrapFolderRowList.length}'),
                                                                              folderName: wrapFolderRow.name!,
                                                                              colorIcon: FlutterFlowTheme.of(context).primary,
                                                                              folderId: wrapFolderRow.id,
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ue61483s' /* File */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  FutureBuilder<
                                                                      List<
                                                                          FolderRow>>(
                                                                    future: FolderTable()
                                                                        .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'parent_path',
                                                                            _model.parentPath,
                                                                          )
                                                                          .eqOrNull(
                                                                            'share_with',
                                                                            true,
                                                                          )
                                                                          .eqOrNull(
                                                                            'type',
                                                                            'file',
                                                                          )
                                                                          .eqOrNull(
                                                                            'trash',
                                                                            false,
                                                                          )
                                                                          .order('name'),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<FolderRow>
                                                                          wrapFolderRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Wrap(
                                                                        spacing:
                                                                            15.0,
                                                                        runSpacing:
                                                                            15.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: List.generate(
                                                                            wrapFolderRowList.length,
                                                                            (wrapIndex) {
                                                                          final wrapFolderRow =
                                                                              wrapFolderRowList[wrapIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onDoubleTap:
                                                                                () async {
                                                                              logFirebaseEvent('DOCUMENTS_Container_i29nndxs_ON_DOUBLE_T');
                                                                              await launchURL(wrapFolderRow.pathUrl!);
                                                                            },
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.componentCardViewFileModels2.getModel(
                                                                                widget!.allTab!.toString(),
                                                                                wrapIndex,
                                                                              ),
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: ComponentCardViewFileWidget(
                                                                                key: Key(
                                                                                  'Keyi29_${widget!.allTab!.toString()}',
                                                                                ),
                                                                                fileName: valueOrDefault<String>(
                                                                                  wrapFolderRow.name,
                                                                                  '-',
                                                                                ),
                                                                                fileUrl: wrapFolderRow.pathUrl!,
                                                                                folderId: wrapFolderRow.id,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model.isList == true)
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, -1.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                              ),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
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
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PAGE_DOCUMENTS_PAGE_Text_57hvjzme_ON_TAP');
                                                                          _model.parentPath =
                                                                              'documents/';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'gjqgna7t' /* Share with me */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              10.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Theme(
                                                                        data:
                                                                            ThemeData(
                                                                          checkboxTheme:
                                                                              CheckboxThemeData(
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          unselectedWidgetColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                        child:
                                                                            Checkbox(
                                                                          value: _model.checkboxValue3 ??=
                                                                              true,
                                                                          onChanged:
                                                                              (newValue) async {
                                                                            safeSetState(() =>
                                                                                _model.checkboxValue3 = newValue!);
                                                                          },
                                                                          side:
                                                                              BorderSide(
                                                                            width:
                                                                                2,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                          ),
                                                                          activeColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          checkColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            FlutterFlowIconButton(
                                                                          borderColor:
                                                                              Colors.transparent,
                                                                          borderRadius:
                                                                              30.0,
                                                                          borderWidth:
                                                                              1.0,
                                                                          buttonSize:
                                                                              46.0,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.more_vert,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            print('IconButton pressed ...');
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '0pb4xb8o' /* Name */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.swap_vert_outlined,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 20.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'jv7uovdc' /* ShareBy */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 1,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'w9n64dc1' /* ShareDate */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child: FutureBuilder<
                                                                        List<
                                                                            FolderRow>>(
                                                                      future: FolderTable()
                                                                          .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eqOrNull(
                                                                              'share_with',
                                                                              true,
                                                                            )
                                                                            .eqOrNull(
                                                                              'parent_path',
                                                                              _model.parentPath,
                                                                            )
                                                                            .eqOrNull(
                                                                              'trash',
                                                                              false,
                                                                            )
                                                                            .order('type')
                                                                            .order('name'),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: CircularProgressIndicator(
                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                  FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<FolderRow>
                                                                            listViewFolderRowList =
                                                                            snapshot.data!;

                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              listViewFolderRowList.length,
                                                                          itemBuilder:
                                                                              (context, listViewIndex) {
                                                                            final listViewFolderRow =
                                                                                listViewFolderRowList[listViewIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  boxShadow: [
                                                                                    BoxShadow(
                                                                                      blurRadius: 0.0,
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                      offset: Offset(
                                                                                        0.0,
                                                                                        -1.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onDoubleTap: () async {
                                                                                    logFirebaseEvent('DOCUMENTS_Row_w5fbwon2_ON_DOUBLE_TAP');
                                                                                    if (listViewFolderRow.type == 'folder') {
                                                                                      _model.parentPath = '${_model.parentPath}${listViewFolderRow.name}/';
                                                                                      safeSetState(() {});
                                                                                    } else {
                                                                                      await launchURL(listViewFolderRow.pathUrl!);
                                                                                    }
                                                                                  },
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                    children: [
                                                                                      Theme(
                                                                                        data: ThemeData(
                                                                                          checkboxTheme: CheckboxThemeData(
                                                                                            visualDensity: VisualDensity.compact,
                                                                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                        ),
                                                                                        child: Checkbox(
                                                                                          value: _model.checkboxValueMap4[listViewFolderRow] ??= false,
                                                                                          onChanged: (newValue) async {
                                                                                            safeSetState(() => _model.checkboxValueMap4[listViewFolderRow] = newValue!);
                                                                                          },
                                                                                          side: BorderSide(
                                                                                            width: 2,
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                          ),
                                                                                          activeColor: FlutterFlowTheme.of(context).primary,
                                                                                          checkColor: FlutterFlowTheme.of(context).info,
                                                                                        ),
                                                                                      ),
                                                                                      Flexible(
                                                                                        child: Builder(
                                                                                          builder: (context) => FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 44.0,
                                                                                            icon: Icon(
                                                                                              Icons.more_vert,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('PAGE_DOCUMENTS_PAGE_more_vert_ICN_ON_TAP');
                                                                                              if (listViewFolderRow.type == 'folder') {
                                                                                                showAlignedDialog(
                                                                                                  barrierColor: Colors.transparent,
                                                                                                  context: context,
                                                                                                  isGlobal: false,
                                                                                                  avoidOverflow: true,
                                                                                                  targetAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  followerAnchor: AlignmentDirectional(-1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  builder: (dialogContext) {
                                                                                                    return Material(
                                                                                                      color: Colors.transparent,
                                                                                                      child: GestureDetector(
                                                                                                        onTap: () {
                                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                        },
                                                                                                        child: Container(
                                                                                                          width: 300.0,
                                                                                                          child: ComponentOptionFloderWidget(
                                                                                                            folderId: listViewFolderRow.id,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                );
                                                                                              } else {
                                                                                                showAlignedDialog(
                                                                                                  barrierColor: Colors.transparent,
                                                                                                  context: context,
                                                                                                  isGlobal: false,
                                                                                                  avoidOverflow: true,
                                                                                                  targetAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  followerAnchor: AlignmentDirectional(-1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  builder: (dialogContext) {
                                                                                                    return Material(
                                                                                                      color: Colors.transparent,
                                                                                                      child: GestureDetector(
                                                                                                        onTap: () {
                                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                        },
                                                                                                        child: Container(
                                                                                                          width: 300.0,
                                                                                                          child: ComponentOptionDocumentsWidget(
                                                                                                            folderId: listViewFolderRow.id,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                );
                                                                                              }
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (listViewFolderRow.type == 'folder')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                child: Icon(
                                                                                                  Icons.folder,
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewFolderRow.type == 'file')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                child: Icon(
                                                                                                  Icons.picture_as_pdf,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                            ))
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewFolderRow.name,
                                                                                                  'reports',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(40.0),
                                                                                                  child: Image.network(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewFolderRow.userProfile,
                                                                                                      'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                    ),
                                                                                                    width: 32.0,
                                                                                                    height: 32.0,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          listViewFolderRow.username,
                                                                                                          'Guest',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          listViewFolderRow.role == 1 ? 'General' : 'Admin',
                                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                letterSpacing: 0.0,
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
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Expanded(
                                                                                          flex: 1,
                                                                                          child: Text(
                                                                                            dateTimeFormat(
                                                                                              "dd/MM/yyyy hh:mm a",
                                                                                              listViewFolderRow.createdAt,
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                  fontFamily: 'Outfit',
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].addToStart(
                                                                  SizedBox(
                                                                      height:
                                                                          5.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model.isList == true)
                                                      wrapWithModel(
                                                        model: _model
                                                            .paginationPanelModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            PaginationPanelWidget(),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/undraw_favourite_item_pcyo.png',
                                                        width: 200.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g533fxgn' /* No Favorite File! */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'z0xkrjr8' /* Add favorite file that you wan... */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 10.0)),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (_model.isList == false)
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PAGE_DOCUMENTS_PAGE_Text_iwm5c3hk_ON_TAP');
                                                                        _model.parentPath =
                                                                            'documents/';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'hq69jrza' /* Trash */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  FutureBuilder<
                                                                      List<
                                                                          FolderRow>>(
                                                                    future: FolderTable()
                                                                        .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'type',
                                                                            'folder',
                                                                          )
                                                                          .eqOrNull(
                                                                            'parent_path',
                                                                            _model.parentPath,
                                                                          )
                                                                          .eqOrNull(
                                                                            'trash',
                                                                            true,
                                                                          )
                                                                          .eqOrNull(
                                                                            'share_with',
                                                                            false,
                                                                          )
                                                                          .eqOrNull(
                                                                            'user_id',
                                                                            currentUserUid,
                                                                          ),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<FolderRow>
                                                                          wrapFolderRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Wrap(
                                                                        spacing:
                                                                            15.0,
                                                                        runSpacing:
                                                                            15.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: List.generate(
                                                                            wrapFolderRowList.length,
                                                                            (wrapIndex) {
                                                                          final wrapFolderRow =
                                                                              wrapFolderRowList[wrapIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onDoubleTap:
                                                                                () async {
                                                                              logFirebaseEvent('DOCUMENTS_Container_fn7yhhmx_ON_DOUBLE_T');
                                                                              _model.parentPath = '${_model.parentPath}${wrapFolderRow.name}/';
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                ComponentCardViewFolderWidget(
                                                                              key: Key('Keyfn7_${wrapIndex}_of_${wrapFolderRowList.length}'),
                                                                              folderName: valueOrDefault<String>(
                                                                                wrapFolderRow.name,
                                                                                'Report',
                                                                              ),
                                                                              colorIcon: FlutterFlowTheme.of(context).primary,
                                                                              folderId: wrapFolderRow.id,
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'edbef2qz' /* File */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      FutureBuilder<
                                                                          List<
                                                                              FolderRow>>(
                                                                        future:
                                                                            FolderTable().queryRows(
                                                                          queryFn: (q) => q
                                                                              .eqOrNull(
                                                                                'type',
                                                                                'file',
                                                                              )
                                                                              .eqOrNull(
                                                                                'parent_path',
                                                                                _model.parentPath,
                                                                              )
                                                                              .eqOrNull(
                                                                                'share_with',
                                                                                false,
                                                                              )
                                                                              .eqOrNull(
                                                                                'trash',
                                                                                true,
                                                                              )
                                                                              .eqOrNull(
                                                                                'user_id',
                                                                                currentUserUid,
                                                                              ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Image.asset(
                                                                              '',
                                                                            );
                                                                          }
                                                                          List<FolderRow>
                                                                              wrapFolderRowList =
                                                                              snapshot.data!;

                                                                          return Wrap(
                                                                            spacing:
                                                                                15.0,
                                                                            runSpacing:
                                                                                15.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.start,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children:
                                                                                List.generate(wrapFolderRowList.length, (wrapIndex) {
                                                                              final wrapFolderRow = wrapFolderRowList[wrapIndex];
                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onDoubleTap: () async {
                                                                                  logFirebaseEvent('DOCUMENTS_Container_5xgxkhyk_ON_DOUBLE_T');
                                                                                  await launchURL(wrapFolderRow.pathUrl!);
                                                                                },
                                                                                child: ComponentCardViewFileWidget(
                                                                                  key: Key('Key5xg_${wrapIndex}_of_${wrapFolderRowList.length}'),
                                                                                  fileName: valueOrDefault<String>(
                                                                                    wrapFolderRow.name,
                                                                                    '-',
                                                                                  ),
                                                                                  fileUrl: valueOrDefault<String>(
                                                                                    wrapFolderRow.pathUrl,
                                                                                    'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/folder/1728389806864000.pdf',
                                                                                  ),
                                                                                  folderId: wrapFolderRow.id,
                                                                                ),
                                                                              );
                                                                            }),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.isList == true)
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, -1.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PAGE_DOCUMENTS_PAGE_Text_tloeaqew_ON_TAP');
                                                                        _model.parentPath =
                                                                            'documents/';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '51b666jj' /* Trash */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            10.0),
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Theme(
                                                                      data:
                                                                          ThemeData(
                                                                        checkboxTheme:
                                                                            CheckboxThemeData(
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        unselectedWidgetColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                      ),
                                                                      child:
                                                                          Checkbox(
                                                                        value: _model.checkboxValue5 ??=
                                                                            true,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          safeSetState(() =>
                                                                              _model.checkboxValue5 = newValue!);
                                                                        },
                                                                        side:
                                                                            BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                        activeColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        checkColor:
                                                                            FlutterFlowTheme.of(context).info,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            30.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            46.0,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'zd8epvwn' /* Name */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.swap_vert_outlined,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'e4uzdgv3' /* Owner */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 1,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '3rn0j3gj' /* LastModify */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'vsdkcbdk' /* FileSize */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0.0),
                                                                  ),
                                                                ),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        FolderRow>>(
                                                                  future: FolderTable()
                                                                      .queryRows(
                                                                    queryFn: (q) => q
                                                                        .eqOrNull(
                                                                          'parent_path',
                                                                          _model
                                                                              .parentPath,
                                                                        )
                                                                        .eqOrNull(
                                                                          'user_id',
                                                                          currentUserUid,
                                                                        )
                                                                        .eqOrNull(
                                                                          'share_with',
                                                                          false,
                                                                        )
                                                                        .eqOrNull(
                                                                          'trash',
                                                                          true,
                                                                        )
                                                                        .order('type'),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<FolderRow>
                                                                        listViewFolderRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewFolderRowList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewFolderRow =
                                                                            listViewFolderRowList[listViewIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              1.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 0.0,
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    1.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(0.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(0.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onDoubleTap: () async {
                                                                                logFirebaseEvent('DOCUMENTS_Row_vgo8ockj_ON_DOUBLE_TAP');
                                                                                if (listViewFolderRow.type == 'folder') {
                                                                                  _model.parentPath = '${listViewFolderRow.parentPath}${listViewFolderRow.name}/';
                                                                                  safeSetState(() {});
                                                                                } else {
                                                                                  await launchURL(listViewFolderRow.pathUrl!);
                                                                                }
                                                                              },
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: [
                                                                                  Theme(
                                                                                    data: ThemeData(
                                                                                      checkboxTheme: CheckboxThemeData(
                                                                                        visualDensity: VisualDensity.compact,
                                                                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                      ),
                                                                                      unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    child: Checkbox(
                                                                                      value: _model.checkboxValueMap6[listViewFolderRow] ??= false,
                                                                                      onChanged: (newValue) async {
                                                                                        safeSetState(() => _model.checkboxValueMap6[listViewFolderRow] = newValue!);
                                                                                      },
                                                                                      side: BorderSide(
                                                                                        width: 2,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      activeColor: FlutterFlowTheme.of(context).primary,
                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Builder(
                                                                                      builder: (context) => FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 44.0,
                                                                                        icon: Icon(
                                                                                          Icons.more_vert,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          logFirebaseEvent('PAGE_DOCUMENTS_PAGE_more_vert_ICN_ON_TAP');
                                                                                          if (listViewFolderRow.type == 'folder') {
                                                                                            showAlignedDialog(
                                                                                              barrierColor: Colors.transparent,
                                                                                              context: context,
                                                                                              isGlobal: false,
                                                                                              avoidOverflow: true,
                                                                                              targetAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                              followerAnchor: AlignmentDirectional(-1.0, 0.0).resolve(Directionality.of(context)),
                                                                                              builder: (dialogContext) {
                                                                                                return Material(
                                                                                                  color: Colors.transparent,
                                                                                                  child: GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(dialogContext).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: 300.0,
                                                                                                      child: ComponentOptionFloderWidget(
                                                                                                        folderId: listViewFolderRow.id,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          } else {
                                                                                            showAlignedDialog(
                                                                                              barrierColor: Colors.transparent,
                                                                                              context: context,
                                                                                              isGlobal: false,
                                                                                              avoidOverflow: true,
                                                                                              targetAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                              followerAnchor: AlignmentDirectional(-1.0, 0.0).resolve(Directionality.of(context)),
                                                                                              builder: (dialogContext) {
                                                                                                return Material(
                                                                                                  color: Colors.transparent,
                                                                                                  child: GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(dialogContext).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: 300.0,
                                                                                                      child: ComponentOptionDocumentsWidget(
                                                                                                        folderId: listViewFolderRow.id,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          }
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 2,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (listViewFolderRow.type == 'folder')
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.folder,
                                                                                              color: () {
                                                                                                if (listViewFolderRow.colorCode == '#aed6f1') {
                                                                                                  return Color(0xFFAED6F1);
                                                                                                } else if (listViewFolderRow.colorCode == '#abebc6') {
                                                                                                  return Color(0xFFABEBC6);
                                                                                                } else if (listViewFolderRow.colorCode == '#fad7a0') {
                                                                                                  return Color(0xFFFAD7A0);
                                                                                                } else if (listViewFolderRow.colorCode == '#f5b7b1') {
                                                                                                  return Color(0xFFF5B7B1);
                                                                                                } else if (listViewFolderRow.colorCode == '#5dade2') {
                                                                                                  return Color(0xFF5DADE2);
                                                                                                } else if (listViewFolderRow.colorCode == '#58d68d') {
                                                                                                  return Color(0xFF58D68D);
                                                                                                } else if (listViewFolderRow.colorCode == '#f5b041') {
                                                                                                  return Color(0xFFF5B041);
                                                                                                } else if (listViewFolderRow.colorCode == '#ec7063') {
                                                                                                  return Color(0xFFEC7063);
                                                                                                } else if (listViewFolderRow.colorCode == '#2e86c1') {
                                                                                                  return Color(0xFF2E86C1);
                                                                                                } else if (listViewFolderRow.colorCode == '#28b463') {
                                                                                                  return Color(0xFF28B463);
                                                                                                } else if (listViewFolderRow.colorCode == '#d68910') {
                                                                                                  return Color(0xFFD68910);
                                                                                                } else if (listViewFolderRow.colorCode == '#cb4335') {
                                                                                                  return Color(0xFFCB4335);
                                                                                                } else {
                                                                                                  return FlutterFlowTheme.of(context).primary;
                                                                                                }
                                                                                              }(),
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        if (listViewFolderRow.type == 'file')
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.picture_as_pdf,
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                        ))
                                                                                          Expanded(
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                listViewFolderRow.name,
                                                                                                'reports',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 2,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(40.0),
                                                                                              child: Image.network(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewFolderRow.userProfile,
                                                                                                  'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                ),
                                                                                                width: 32.0,
                                                                                                height: 32.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewFolderRow.username,
                                                                                                      'Guest',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      listViewFolderRow.role != null ? 'General' : 'Admin',
                                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            letterSpacing: 0.0,
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
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      flex: 1,
                                                                                      child: Text(
                                                                                        dateTimeFormat(
                                                                                          "dd/MM/yyyy hh:mm a",
                                                                                          listViewFolderRow.createdAt,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Text(
                                                                                        '${formatNumber(
                                                                                          listViewFolderRow.size,
                                                                                          formatType: FormatType.custom,
                                                                                          format: '##.##',
                                                                                          locale: '',
                                                                                        )} ${listViewFolderRow.unit}',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                ],
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
                                                      ),
                                                    ),
                                                  if (_model.nullFolder ==
                                                      false)
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/undraw_my_files_swob.png',
                                                                  width: 200.0,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'i90wurk5' /* No File or Folder here! */,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ckw7xs35' /* Click "New" button to Upload f... */,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.isList == true)
                                                    wrapWithModel(
                                                      model: _model
                                                          .paginationPanelModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          PaginationPanelWidget(),
                                                    ),
                                                ].addToStart(
                                                    SizedBox(height: 5.0)),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
