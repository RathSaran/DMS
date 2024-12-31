import '/backend/supabase/supabase.dart';
import '/component/userview_component/userview_component_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/componentsetting_configuration/component_add_department/component_add_department_widget.dart';
import '/componentsetting_configuration/component_add_office/component_add_office_widget.dart';
import '/componentsetting_configuration/component_configurationpopup/component_configurationpopup_widget.dart';
import '/componentsetting_configuration/component_editing/component_editing_widget.dart';
import '/componentsetting_configuration/component_minister_add/component_minister_add_widget.dart';
import '/componentsetting_configuration/component_ministry_add/component_ministry_add_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'configuration_page_backup_model.dart';
export 'configuration_page_backup_model.dart';

class ConfigurationPageBackupWidget extends StatefulWidget {
  const ConfigurationPageBackupWidget({
    super.key,
    this.customDateFormat,
    this.tabindexlist,
    this.departmentname,
    this.isclicked,
  });

  final List<String>? customDateFormat;
  final int? tabindexlist;
  final String? departmentname;
  final bool? isclicked;

  @override
  State<ConfigurationPageBackupWidget> createState() =>
      _ConfigurationPageBackupWidgetState();
}

class _ConfigurationPageBackupWidgetState
    extends State<ConfigurationPageBackupWidget> with TickerProviderStateMixin {
  late ConfigurationPageBackupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfigurationPageBackupModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'configuration_page_backup'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: min(
          valueOrDefault<int>(
            widget!.tabindexlist,
            0,
          ),
          4),
    )..addListener(() => safeSetState(() {}));
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                  Icons.done_all,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconThree: Icon(
                  Icons.stacked_bar_chart_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconFour: Icon(
                  Icons.settings_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                ),
                colorBgOne: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgTwo: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgThree: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgFour: FlutterFlowTheme.of(context).primaryBackground,
                textOne: FlutterFlowTheme.of(context).secondaryText,
                textTwo: FlutterFlowTheme.of(context).secondaryText,
                textThree: FlutterFlowTheme.of(context).secondaryText,
                textFour: FlutterFlowTheme.of(context).primaryText,
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
                  wrapWithModel(
                    model: _model.navigateBackPageHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavigateBackPageHeaderWidget(
                      previousPage: FFLocalizations.of(context).getText(
                        'ocpzd4gw' /* settings */,
                      ),
                      title: FFLocalizations.of(context).getText(
                        'dmxi14pm' /* Configuration */,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 25.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'eph2v0o0' /* Configuration Setting */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Builder(
                          builder: (context) => FlutterFlowIconButton(
                            borderRadius: 24.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            hoverColor: FlutterFlowTheme.of(context).primary,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.edit_note_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'CONFIGURATION_BACKUP_edit_note_rounded_I');
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: ComponentConfigurationpopupWidget(),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Container(
                      height: 750.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(-1.0, 0),
                            child: TabBar(
                              isScrollable: true,
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'z4cukt85' /* Document Process */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'h9u4vm2p' /* Department */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'iimjg8yt' /* Tools */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'diq3bneu' /* Serverity */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'xwjupbfd' /* Others */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [
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
                              controller: _model.tabBarController,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  width: 410.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10.0),
                                                      bottomRight:
                                                          Radius.circular(10.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 5.0,
                                                                10.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons.search,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 200.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController1,
                                                              focusNode: _model
                                                                  .textFieldFocusNode1,
                                                              autofocus: false,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'ycjrzsz0' /* Search */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              validator: _model
                                                                  .textController1Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.notes,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered1 = true);
                                                }),
                                                onExit: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered1 = false);
                                                }),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'h35m02r1' /* Add */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 22.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 98.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'uy0pln8n' /* Delete */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 120.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 584.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10.0),
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.more_vert,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'shgroy43' /* Name */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              's7lug3cf' /* Permission */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 4,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'od2aomhq' /* Status */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      15.0,
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
                                                              .settings_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ]
                                                          .divide(SizedBox(
                                                              width: 10.0))
                                                          .addToStart(SizedBox(
                                                              width: 5.0))
                                                          .addToEnd(SizedBox(
                                                              width: 5.0)),
                                                    ),
                                                  ),
                                                ),
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  child: Container(
                                                    height: 500.0,
                                                    decoration: BoxDecoration(),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        SingleChildScrollView(
                                                          primary: false,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'ohfxc0o2' /* Priority */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'h500pfcr' /* Enable */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '0clavvge' /* Process */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .view_compact,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                10.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                5.0))
                                                                        .addToEnd(SizedBox(
                                                                            width:
                                                                                5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '49ro92ds' /* Category */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'g8ptct2m' /* Enable */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'gobjiz4i' /* Process */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .view_compact,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                10.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                5.0))
                                                                        .addToEnd(SizedBox(
                                                                            width:
                                                                                5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'osgx0dxw' /* Serverity */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'hr9rd6c2' /* Enable */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '6f29mxm8' /* Process */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .view_compact,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                10.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                5.0))
                                                                        .addToEnd(SizedBox(
                                                                            width:
                                                                                5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  onEnter: ((event) async {
                                                    safeSetState(() => _model
                                                            .mouseRegionHovered1 =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    safeSetState(() => _model
                                                            .mouseRegionHovered1 =
                                                        false);
                                                  }),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    height: 480.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  width: 410.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10.0),
                                                      bottomRight:
                                                          Radius.circular(10.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 5.0,
                                                                10.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons.search,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 200.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController2,
                                                              focusNode: _model
                                                                  .textFieldFocusNode2,
                                                              autofocus: false,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  's1n3ng3e' /* Search */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              validator: _model
                                                                  .textController2Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.notes,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered2 = true);
                                                }),
                                                onExit: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered2 = false);
                                                }),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'xn6gbeim' /* Add */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 22.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 98.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'mmcrlobk' /* Delete */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 120.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'CONFIGURATION_BACKUP_Icon_nwptziti_ON_TA');
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons.arrow_back,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '78714khw' /* Organization / Department  */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10.0),
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          flex: 8,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'z4ep0ojl' /* Ministry */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
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
                                                        Expanded(
                                                          flex: 8,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'zowim3ms' /* Minister */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
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
                                                        Expanded(
                                                          flex: 8,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'd620aeqe' /* Department */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
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
                                                        Expanded(
                                                          flex: 6,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ggalr5mu' /* Office */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
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
                                                          Icons
                                                              .settings_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ]
                                                          .divide(SizedBox(
                                                              width: 10.0))
                                                          .addToStart(SizedBox(
                                                              width: 5.0))
                                                          .addToEnd(SizedBox(
                                                              width: 5.0)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  height: 450.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10.0),
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
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    primary:
                                                                        false,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        FutureBuilder<
                                                                            List<DepartmentsRow>>(
                                                                          future:
                                                                              DepartmentsTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .eqOrNull(
                                                                                  'parentId',
                                                                                  0,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'id',
                                                                                  1,
                                                                                )
                                                                                .order('id', ascending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
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
                                                                            List<DepartmentsRow>
                                                                                listViewDepartmentsRowList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewDepartmentsRowList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewDepartmentsRow = listViewDepartmentsRowList[listViewIndex];
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONFIGURATION_BACKUP_Container_70oqtjlh_');
                                                                                        if (FFAppState().isClicked) {
                                                                                          FFAppState().isClicked = false;
                                                                                          safeSetState(() {});
                                                                                        } else {
                                                                                          FFAppState().isClicked = true;
                                                                                          safeSetState(() {});
                                                                                        }
                                                                                      },
                                                                                      child: Container(
                                                                                        height: 50.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FFAppState().clickcolor,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(5.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.view_compact,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 22.0,
                                                                                              ),
                                                                                              Expanded(
                                                                                                flex: 2,
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    listViewDepartmentsRow.nameEng,
                                                                                                    '-',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Builder(
                                                                                                builder: (context) => InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('CONFIGURATION_BACKUP_Icon_56bt2baj_ON_TA');
                                                                                                    await showAlignedDialog(
                                                                                                      context: context,
                                                                                                      isGlobal: false,
                                                                                                      avoidOverflow: false,
                                                                                                      targetAnchor: AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                                                      followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      builder: (dialogContext) {
                                                                                                        return Material(
                                                                                                          color: Colors.transparent,
                                                                                                          child: Container(
                                                                                                            height: 270.0,
                                                                                                            width: 270.0,
                                                                                                            child: ComponentEditingWidget(
                                                                                                              id: listViewDepartmentsRow.id,
                                                                                                              deletedepartments: listViewDepartmentsRow,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.more_vert,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    size: 22.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(SizedBox(width: 10.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            Builder(
                                                                          builder: (context) =>
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(5.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('CONFIGURATION_BACKUP_Container_611rf7xb_');
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: Container(
                                                                                        height: 483.0,
                                                                                        width: 450.0,
                                                                                        child: ComponentMinistryAddWidget(),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                height: 45.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(7.0),
                                                                                    bottomRight: Radius.circular(7.0),
                                                                                    topLeft: Radius.circular(7.0),
                                                                                    topRight: Radius.circular(7.0),
                                                                                  ),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.add,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '6w6cull5' /* Add More */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 10.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionHovered2 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionHovered2 = false);
                                                                        }),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  height: 450.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    primary:
                                                                        false,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        if (widget!.isclicked ==
                                                                            true)
                                                                          FutureBuilder<
                                                                              List<DepartmentsRow>>(
                                                                            future:
                                                                                DepartmentsTable().queryRows(
                                                                              queryFn: (q) => q
                                                                                  .eqOrNull(
                                                                                    'parentId',
                                                                                    4,
                                                                                  )
                                                                                  .order('id', ascending: true),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
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
                                                                              List<DepartmentsRow> listViewDepartmentsRowList = snapshot.data!;

                                                                              return ListView.builder(
                                                                                padding: EdgeInsets.zero,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: listViewDepartmentsRowList.length,
                                                                                itemBuilder: (context, listViewIndex) {
                                                                                  final listViewDepartmentsRow = listViewDepartmentsRowList[listViewIndex];
                                                                                  return Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        height: 50.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(5.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.view_compact,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 22.0,
                                                                                              ),
                                                                                              Expanded(
                                                                                                flex: 2,
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    listViewDepartmentsRow.nameEng,
                                                                                                    '-',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Builder(
                                                                                                builder: (context) => InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('CONFIGURATION_BACKUP_Icon_7pa7v1qa_ON_TA');
                                                                                                    await showAlignedDialog(
                                                                                                      context: context,
                                                                                                      isGlobal: false,
                                                                                                      avoidOverflow: false,
                                                                                                      targetAnchor: AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                                                      followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      builder: (dialogContext) {
                                                                                                        return Material(
                                                                                                          color: Colors.transparent,
                                                                                                          child: Container(
                                                                                                            height: 270.0,
                                                                                                            width: 270.0,
                                                                                                            child: ComponentEditingWidget(
                                                                                                              id: listViewDepartmentsRow.id,
                                                                                                              deletedepartments: listViewDepartmentsRow,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.more_vert,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    size: 22.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(SizedBox(width: 10.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        FutureBuilder<
                                                                            List<DepartmentsRow>>(
                                                                          future:
                                                                              DepartmentsTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .eqOrNull(
                                                                                  'parentId',
                                                                                  0,
                                                                                )
                                                                                .order('id', ascending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
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
                                                                            List<DepartmentsRow>
                                                                                listViewDepartmentsRowList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewDepartmentsRowList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewDepartmentsRow = listViewDepartmentsRowList[listViewIndex];
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      height: 50.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.all(5.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.view_compact,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 22.0,
                                                                                            ),
                                                                                            Expanded(
                                                                                              flex: 2,
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewDepartmentsRow.nameEng,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 15.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Builder(
                                                                                              builder: (context) => InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('CONFIGURATION_BACKUP_Icon_et2i3oxc_ON_TA');
                                                                                                  await showAlignedDialog(
                                                                                                    context: context,
                                                                                                    isGlobal: false,
                                                                                                    avoidOverflow: false,
                                                                                                    targetAnchor: AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                                                    followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    builder: (dialogContext) {
                                                                                                      return Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: Container(
                                                                                                          height: 270.0,
                                                                                                          width: 270.0,
                                                                                                          child: ComponentEditingWidget(
                                                                                                            id: listViewDepartmentsRow.id,
                                                                                                            deletedepartments: listViewDepartmentsRow,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.more_vert,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 22.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 10.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            Builder(
                                                                          builder: (context) =>
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(5.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('CONFIGURATION_BACKUP_Container_s1gta2gd_');
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: Container(
                                                                                        height: 483.0,
                                                                                        width: 450.0,
                                                                                        child: ComponentMinisterAddWidget(),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                height: 45.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(7.0),
                                                                                    bottomRight: Radius.circular(7.0),
                                                                                    topLeft: Radius.circular(7.0),
                                                                                    topRight: Radius.circular(7.0),
                                                                                  ),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.add,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'y5tgolcz' /* Add More */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 10.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseregionhovertHovered1 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseregionhovertHovered1 = false);
                                                                        }),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  height: 450.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    primary:
                                                                        false,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        FutureBuilder<
                                                                            List<DepartmentsRow>>(
                                                                          future:
                                                                              DepartmentsTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  0,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'id',
                                                                                  1,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  17,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  16,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  15,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  14,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  13,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  12,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  4,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  5,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  7,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  2,
                                                                                )
                                                                                .order('id', ascending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
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
                                                                            List<DepartmentsRow>
                                                                                listViewDepartmentsRowList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewDepartmentsRowList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewDepartmentsRow = listViewDepartmentsRowList[listViewIndex];
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      height: 50.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.all(5.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.view_compact,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 22.0,
                                                                                            ),
                                                                                            Expanded(
                                                                                              flex: 2,
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewDepartmentsRow.nameEng,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 15.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Builder(
                                                                                              builder: (context) => InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('CONFIGURATION_BACKUP_Icon_mqpnfpc9_ON_TA');
                                                                                                  await showAlignedDialog(
                                                                                                    context: context,
                                                                                                    isGlobal: false,
                                                                                                    avoidOverflow: false,
                                                                                                    targetAnchor: AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                                                    followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    builder: (dialogContext) {
                                                                                                      return Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: Container(
                                                                                                          height: 270.0,
                                                                                                          width: 270.0,
                                                                                                          child: ComponentEditingWidget(
                                                                                                            id: listViewDepartmentsRow.id,
                                                                                                            deletedepartments: listViewDepartmentsRow,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.more_vert,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 22.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 10.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) => Padding(
                                                                                padding: EdgeInsets.all(5.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('CONFIGURATION_BACKUP_Container_rn6jqm94_');
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: Container(
                                                                                            height: 483.0,
                                                                                            width: 450.0,
                                                                                            child: ComponentAddDepartmentWidget(),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 45.0,
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(7.0),
                                                                                        bottomRight: Radius.circular(7.0),
                                                                                        topLeft: Radius.circular(7.0),
                                                                                        topRight: Radius.circular(7.0),
                                                                                      ),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                    ),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.add,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 22.0,
                                                                                        ),
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            '0hxsf65t' /* Add More */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ].divide(SizedBox(width: 10.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseregionhovertHovered2 = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseregionhovertHovered2 = false);
                                                                            }),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  height: 450.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              0.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    primary:
                                                                        false,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        FutureBuilder<
                                                                            List<DepartmentsRow>>(
                                                                          future:
                                                                              DepartmentsTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .neqOrNull(
                                                                                  'parentId',
                                                                                  0,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'id',
                                                                                  1,
                                                                                )
                                                                                .eqOrNull(
                                                                                  'parentId',
                                                                                  7,
                                                                                )
                                                                                .order('id', ascending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
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
                                                                            List<DepartmentsRow>
                                                                                listViewDepartmentsRowList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewDepartmentsRowList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewDepartmentsRow = listViewDepartmentsRowList[listViewIndex];
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      height: 50.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.all(5.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.view_compact,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 22.0,
                                                                                            ),
                                                                                            Expanded(
                                                                                              flex: 2,
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewDepartmentsRow.nameEng,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 15.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Builder(
                                                                                              builder: (context) => InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('CONFIGURATION_BACKUP_Icon_5ez25ae3_ON_TA');
                                                                                                  await showAlignedDialog(
                                                                                                    context: context,
                                                                                                    isGlobal: false,
                                                                                                    avoidOverflow: false,
                                                                                                    targetAnchor: AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                                                    followerAnchor: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    builder: (dialogContext) {
                                                                                                      return Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: Container(
                                                                                                          height: 270.0,
                                                                                                          width: 270.0,
                                                                                                          child: ComponentEditingWidget(
                                                                                                            id: listViewDepartmentsRow.id,
                                                                                                            deletedepartments: listViewDepartmentsRow,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.more_vert,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 22.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 10.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            Builder(
                                                                          builder: (context) =>
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(5.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('CONFIGURATION_BACKUP_Container_lwsb7f6k_');
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: Container(
                                                                                        height: 501.0,
                                                                                        width: 450.0,
                                                                                        child: ComponentAddOfficeWidget(),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                height: 45.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(7.0),
                                                                                    bottomRight: Radius.circular(7.0),
                                                                                    topLeft: Radius.circular(7.0),
                                                                                    topRight: Radius.circular(7.0),
                                                                                  ),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.add,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'vvndfr7h' /* Add More */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 10.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseregionhovertHovered3 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseregionhovertHovered3 = false);
                                                                        }),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  width: 410.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10.0),
                                                      bottomRight:
                                                          Radius.circular(10.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 5.0,
                                                                10.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons.search,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 200.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController3,
                                                              focusNode: _model
                                                                  .textFieldFocusNode3,
                                                              autofocus: false,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'kheh1prb' /* Search */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              validator: _model
                                                                  .textController3Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.notes,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered3 = true);
                                                }),
                                                onExit: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered3 = false);
                                                }),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '1e80k3r3' /* Add */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 22.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 98.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'pznaryjk' /* Delete */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 120.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 584.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10.0),
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.more_vert,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'l2vxwi0z' /* Name */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '5lo6ain8' /* Permission */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 4,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'xs8oglhz' /* Status */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      15.0,
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
                                                              .settings_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ]
                                                          .divide(SizedBox(
                                                              width: 10.0))
                                                          .addToStart(SizedBox(
                                                              width: 5.0))
                                                          .addToEnd(SizedBox(
                                                              width: 5.0)),
                                                    ),
                                                  ),
                                                ),
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  child: Container(
                                                    height: 500.0,
                                                    decoration: BoxDecoration(),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        SingleChildScrollView(
                                                          primary: false,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'kcrlng9z' /* Sign Date */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'undid53i' /* Enable */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'bwz6fcmp' /* Process */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .date_range,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                10.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                5.0))
                                                                        .addToEnd(SizedBox(
                                                                            width:
                                                                                5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'hulpkhqs' /* Signature */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4z7dtdgi' /* Enable */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4tgj384i' /* Process */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      FaIcon(
                                                                        FontAwesomeIcons
                                                                            .signature,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                10.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                5.0))
                                                                        .addToEnd(SizedBox(
                                                                            width:
                                                                                5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'ng9u7cr1' /* Initial */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'r2jvh5hk' /* Enable */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'vk7any3e' /* Process */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .view_compact,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                10.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                5.0))
                                                                        .addToEnd(SizedBox(
                                                                            width:
                                                                                5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  onEnter: ((event) async {
                                                    safeSetState(() => _model
                                                            .mouseRegionHovered3 =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    safeSetState(() => _model
                                                            .mouseRegionHovered3 =
                                                        false);
                                                  }),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  width: 410.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10.0),
                                                      bottomRight:
                                                          Radius.circular(10.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 5.0,
                                                                10.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons.search,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 200.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController4,
                                                              focusNode: _model
                                                                  .textFieldFocusNode4,
                                                              autofocus: false,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  '037wfzme' /* Search */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              validator: _model
                                                                  .textController4Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.notes,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered4 = true);
                                                }),
                                                onExit: ((event) async {
                                                  safeSetState(() => _model
                                                      .muosevtHovered4 = false);
                                                }),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Builder(
                                                    builder: (context) =>
                                                        FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'CONFIGURATION_BACKUP_ADD_BTN_ON_TAP');
                                                        await showAlignedDialog(
                                                          context: context,
                                                          isGlobal: false,
                                                          avoidOverflow: false,
                                                          targetAnchor:
                                                              AlignmentDirectional(
                                                                      0.0, -1.0)
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
                                                              child:
                                                                  ComponentMinistryAddWidget(),
                                                            );
                                                          },
                                                        );
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6vki2lg5' /* Add */,
                                                      ),
                                                      icon: Icon(
                                                        Icons.add,
                                                        size: 22.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 98.0,
                                                        height: 45.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconAlignment:
                                                            IconAlignment.start,
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        hoverBorderSide:
                                                            BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                        hoverTextColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'ax04rkvp' /* Delete */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 120.0,
                                                      height: 45.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 581.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10.0),
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 477.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                  1.0, 0.0),
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
                                                                    10.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .checkboxValue1 ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.checkboxValue1 =
                                                                            newValue!);
                                                                  },
                                                                  side:
                                                                      BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  checkColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 4,
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'b909uzws' /* Name */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons.edit_note,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 40.0)),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 250.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Color(
                                                                    0x33000000),
                                                                offset: Offset(
                                                                    1.0, 0.0),
                                                              )
                                                            ],
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'mmn1qp0c' /* Audit Log */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .edit_note,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 40.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 286.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  flex: 3,
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'f8zqtp97' /* Status */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .edit_note,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 10.0)),
                                                  ),
                                                ),
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  child: Container(
                                                    height: 500.0,
                                                    decoration: BoxDecoration(),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        SingleChildScrollView(
                                                          primary: false,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          477.0,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue2 ??= true,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue2 = newValue!);
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wcvfey6w' /* ក្រសួងមហាផ្ទៃ */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.add_circle,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 40.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.userviewComponentModel1,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              UserviewComponentWidget(),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            293.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 3,
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'f0lulb9k' /* Process */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) => FlutterFlowIconButton(
                                                                                  borderColor: Colors.transparent,
                                                                                  borderRadius: 24.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).alternate,
                                                                                  hoverColor: FlutterFlowTheme.of(context).primary,
                                                                                  hoverIconColor: FlutterFlowTheme.of(context).alternate,
                                                                                  icon: Icon(
                                                                                    Icons.more_vert,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('CONFIGURATION_BACKUP_more_vert_ICN_ON_TA');
                                                                                    showAlignedDialog(
                                                                                      context: context,
                                                                                      isGlobal: false,
                                                                                      avoidOverflow: false,
                                                                                      targetAnchor: AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                                      followerAnchor: AlignmentDirectional(-1.0, -1.0).resolve(Directionality.of(context)),
                                                                                      builder: (dialogContext) {
                                                                                        return Material(
                                                                                          color: Colors.transparent,
                                                                                          child: ComponentEditingWidget(),
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
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          477.0,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue3 ??= true,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue3 = newValue!);
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'llz3g10y' /* ក្រសួងសសាធារណការណ៍ និងដឹកជញ្ជូ... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.add_circle,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 40.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.userviewComponentModel2,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              UserviewComponentWidget(),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            238.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 3,
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '27tpgz0y' /* Process */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            24.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        hoverColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        hoverIconColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'CONFIGURATION_BACKUP_more_vert_ICN_ON_TA');
                                                                          showAlignedDialog(
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                false,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                AlignmentDirectional(-1.0, -1.0).resolve(Directionality.of(context)),
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: ComponentEditingWidget(),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          477.0,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue4 ??= true,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue4 = newValue!);
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1z6c3pyc' /* ក្រសួងរ៉ែ និងថាមពល */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.add_circle,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 40.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.userviewComponentModel3,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              UserviewComponentWidget(),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            238.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 3,
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'iopbsm4u' /* Process */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            24.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        hoverColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        hoverIconColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'CONFIGURATION_BACKUP_more_vert_ICN_ON_TA');
                                                                          showAlignedDialog(
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                false,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                AlignmentDirectional(-1.0, -1.0).resolve(Directionality.of(context)),
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: ComponentEditingWidget(),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
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
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          477.0,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue5 ??= true,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue5 = newValue!);
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hij3sfzi' /* ក្រសួងធនរ៉ែ និងថាមពល */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.add_circle,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 40.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.userviewComponentModel4,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              UserviewComponentWidget(),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            238.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 3,
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '28lwa0nu' /* Process */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            24.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        hoverColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        hoverIconColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'CONFIGURATION_BACKUP_more_vert_ICN_ON_TA');
                                                                          showAlignedDialog(
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                false,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                AlignmentDirectional(-1.0, -1.0).resolve(Directionality.of(context)),
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: ComponentEditingWidget(),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  onEnter: ((event) async {
                                                    safeSetState(() => _model
                                                            .mouseRegionHovered4 =
                                                        true);
                                                  }),
                                                  onExit: ((event) async {
                                                    safeSetState(() => _model
                                                            .mouseRegionHovered4 =
                                                        false);
                                                  }),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ],
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
        ],
      ),
    );
  }
}
