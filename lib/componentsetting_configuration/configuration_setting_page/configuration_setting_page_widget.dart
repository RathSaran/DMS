import '/backend/supabase/supabase.dart';
import '/component/userview_component/userview_component_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/componentsetting_configuration/component_add_department/component_add_department_widget.dart';
import '/componentsetting_configuration/component_add_office/component_add_office_widget.dart';
import '/componentsetting_configuration/component_configurationpopup/component_configurationpopup_widget.dart';
import '/componentsetting_configuration/component_editing/component_editing_widget.dart';
import '/componentsetting_configuration/component_minister_add/component_minister_add_widget.dart';
import '/componentsetting_configuration/component_ministry_add/component_ministry_add_widget.dart';
import '/componentsetting_configuration/component_search_filter/component_search_filter_widget.dart';
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
import 'configuration_setting_page_model.dart';
export 'configuration_setting_page_model.dart';

class ConfigurationSettingPageWidget extends StatefulWidget {
  const ConfigurationSettingPageWidget({
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
  State<ConfigurationSettingPageWidget> createState() =>
      _ConfigurationSettingPageWidgetState();
}

class _ConfigurationSettingPageWidgetState
    extends State<ConfigurationSettingPageWidget>
    with TickerProviderStateMixin {
  late ConfigurationSettingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfigurationSettingPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'configuration_setting_page'});
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
                        'cbp1oqir' /* settings */,
                      ),
                      title: FFLocalizations.of(context).getText(
                        'e8yyvui2' /* Configuration */,
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
                            'bolecycc' /* Configuration Setting */,
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
                                  'CONFIGURATION_SETTING_edit_note_rounded_');
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
                      height: 755.0,
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
                                    fontWeight: FontWeight.w600,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'i63l6ujr' /* Document Process */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'v88bpj92' /* Organization /Company */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'jervrg9y' /* Tools */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'apuzdo8c' /* Sign */,
                                  ),
                                  iconMargin: EdgeInsets.all(8.0),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'slpil2jm' /* Others */,
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
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.lightbulb_outline_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 22.0,
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'dzds7tdh' /* Adjust and modify the document... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
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
                                                      color: _model
                                                              .muosevtHovered4!
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
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
                                                                  'setafbn1' /* Search */,
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
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
                                                              'sx3uro71' /* Priority */,
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
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 8,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'daabv1hi' /* Category */,
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
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 8,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '204rtci7' /* Sensitivity */,
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
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 6,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'xman0zyc' /* Severity */,
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
                                                                            List<ConfigurationdocRow>>(
                                                                          future:
                                                                              ConfigurationdocTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .neqOrNull(
                                                                                  'secondID',
                                                                                  26,
                                                                                )
                                                                                .neqOrNull(
                                                                                  'secondID',
                                                                                  36,
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
                                                                            List<ConfigurationdocRow>
                                                                                listViewConfigurationdocRowList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewConfigurationdocRowList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewConfigurationdocRow = listViewConfigurationdocRowList[listViewIndex];
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
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: listViewConfigurationdocRow.nameEn,
                                                                                                    kmText: listViewConfigurationdocRow.nameKh,
                                                                                                  ),
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
                                                                                            Icon(
                                                                                              Icons.more_vert,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 22.0,
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
                                                                                logFirebaseEvent('CONFIGURATION_SETTING_Container_qnulb2zr');
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
                                                                                        'w893w7d6' /* Add More */,
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
                                                                              _model.mouseRegionHovered1 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionHovered1 = false);
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
                                                                                                  logFirebaseEvent('CONFIGURATION_SETTING_Icon_r8agl9kx_ON_T');
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
                                                                                logFirebaseEvent('CONFIGURATION_SETTING_Container_s806x9sc');
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
                                                                                        'j37xpdpo' /* Add More */,
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
                                                                                .eqOrNull(
                                                                                  'parentId',
                                                                                  12,
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
                                                                                                  logFirebaseEvent('CONFIGURATION_SETTING_Icon_ohh0yh7e_ON_T');
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
                                                                                    logFirebaseEvent('CONFIGURATION_SETTING_Container_mqdym50h');
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
                                                                                            '5lbpgkgv' /* Add More */,
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
                                                                                                  logFirebaseEvent('CONFIGURATION_SETTING_Icon_oz1tzv7m_ON_T');
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
                                                                                logFirebaseEvent('CONFIGURATION_SETTING_Container_8yxb6spf');
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
                                                                                        'qodd0z7s' /* Add More */,
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
                                                  20.0, 20.0, 20.0, 20.0),
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
                                                      'CONFIGURATION_SETTING_Icon_edj48njq_ON_T');
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons.lightbulb_outline_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'tbgohraw' /* Adjust and modify department/o... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
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
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Container(
                                                              width: 200.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textController2,
                                                                focusNode: _model
                                                                    .textFieldFocusNode2,
                                                                autofocus:
                                                                    false,
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
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'sdq4lp95' /* Search */,
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
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
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
                                                              'y2bjqy2q' /* Ministry */,
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
                                                              'nzmk4jxj' /* Minister */,
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
                                                              'wsa7wflw' /* General Department */,
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
                                                              'oq1ld7wg' /* Department */,
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
                                                                                ),
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
                                                                                    if (FFAppState().onTab != '${listViewDepartmentsRow.id.toString()}')
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Container_w6xyxade');
                                                                                          FFAppState().onTab = listViewDepartmentsRow.id.toString();
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
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
                                                                                                      logFirebaseEvent('CONFIGURATION_SETTING_Icon_oo6rcy67_ON_T');
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
                                                                                      ),
                                                                                    if (FFAppState().onTab == '${listViewDepartmentsRow.id.toString()}')
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Container_3lhsdsiz');
                                                                                          FFAppState().onTab = '';
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
                                                                                          height: 50.0,
                                                                                          decoration: BoxDecoration(
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                offset: Offset(2.0, 0.0),
                                                                                              )
                                                                                            ],
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primary,
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
                                                                                                  color: FlutterFlowTheme.of(context).primary,
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
                                                                                                      logFirebaseEvent('CONFIGURATION_SETTING_Icon_sxrq2pv6_ON_T');
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
                                                                                                      color: FlutterFlowTheme.of(context).primary,
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
                                                                                logFirebaseEvent('CONFIGURATION_SETTING_Container_7lof21rv');
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
                                                                                        'sv2j193n' /* Add More */,
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
                                                                        if (FFAppState().onTab !=
                                                                            '${_model.tabBarCurrentIndex.toString()}')
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

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('CONFIGURATION_SETTING_ListView_m7gf6bqo_');
                                                                                  FFAppState().onTab = '';
                                                                                  safeSetState(() {});
                                                                                },
                                                                                child: ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: listViewDepartmentsRowList.length,
                                                                                  itemBuilder: (context, listViewIndex) {
                                                                                    final listViewDepartmentsRow = listViewDepartmentsRowList[listViewIndex];
                                                                                    return Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (_model.clicked1 != '${listViewDepartmentsRow.id.toString()}')
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('CONFIGURATION_SETTING_Container_n5du2t2p');
                                                                                              _model.clicked1 = listViewDepartmentsRow.id.toString();
                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: Container(
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
                                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Icon_g2p9mgvq_ON_T');
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
                                                                                          ),
                                                                                        if (_model.clicked1 == '${listViewDepartmentsRow.id.toString()}')
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('CONFIGURATION_SETTING_Container_kzcna5ni');
                                                                                              _model.clicked1 = '';
                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 50.0,
                                                                                              decoration: BoxDecoration(
                                                                                                boxShadow: [
                                                                                                  BoxShadow(
                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                    offset: Offset(2.0, 0.0),
                                                                                                  )
                                                                                                ],
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
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
                                                                                                      color: FlutterFlowTheme.of(context).primary,
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
                                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Icon_ery1ujil_ON_T');
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
                                                                                                          color: FlutterFlowTheme.of(context).primary,
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
                                                                                ),
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
                                                                                logFirebaseEvent('CONFIGURATION_SETTING_Container_9gld18q5');
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
                                                                                        'px013s70' /* Add More */,
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
                                                                              _model.mouseregionhovertHovered4 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseregionhovertHovered4 = false);
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
                                                                                .eqOrNull(
                                                                                  'parentId',
                                                                                  12,
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
                                                                                    if (_model.clicked2 != '${listViewDepartmentsRow.id.toString()}')
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Container_d7oyzvyt');
                                                                                          _model.clicked2 = listViewDepartmentsRow.id.toString();
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
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
                                                                                                      logFirebaseEvent('CONFIGURATION_SETTING_Icon_l2ky08tb_ON_T');
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
                                                                                      ),
                                                                                    if (_model.clicked2 == '${listViewDepartmentsRow.id.toString()}')
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Container_sri45xtu');
                                                                                          _model.clicked2 = '';
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
                                                                                          height: 50.0,
                                                                                          decoration: BoxDecoration(
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                offset: Offset(2.0, 0.0),
                                                                                              )
                                                                                            ],
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primary,
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
                                                                                                      logFirebaseEvent('CONFIGURATION_SETTING_Icon_9js2bhwj_ON_T');
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
                                                                                                      color: FlutterFlowTheme.of(context).primary,
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
                                                                                    logFirebaseEvent('CONFIGURATION_SETTING_Container_x5vrirqm');
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
                                                                                            '526hw9b5' /* Add More */,
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
                                                                              safeSetState(() => _model.mouseregionhovertHovered5 = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseregionhovertHovered5 = false);
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
                                                                                    if (_model.clicked3 == '${listViewDepartmentsRow.id.toString()}')
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Container_2bpqwslg');
                                                                                          _model.clicked3 = listViewDepartmentsRow.id.toString();
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
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
                                                                                                      logFirebaseEvent('CONFIGURATION_SETTING_Icon_xdsbngsc_ON_T');
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
                                                                                      ),
                                                                                    if (_model.clicked2 == '${listViewDepartmentsRow.id.toString()}')
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONFIGURATION_SETTING_Container_6blejbo3');
                                                                                          _model.clicked3 = '';
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
                                                                                          height: 50.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primary,
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
                                                                                                  color: FlutterFlowTheme.of(context).primary,
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
                                                                                                      logFirebaseEvent('CONFIGURATION_SETTING_Icon_ejkn75i3_ON_T');
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
                                                                                                      color: FlutterFlowTheme.of(context).primary,
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
                                                                                logFirebaseEvent('CONFIGURATION_SETTING_Container_3lcei1ms');
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
                                                                                        'ah9zn0xj' /* Add More */,
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
                                                                              _model.mouseregionhovertHovered6 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseregionhovertHovered6 = false);
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
                                                  20.0, 20.0, 20.0, 20.0),
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
                                                      'CONFIGURATION_SETTING_Icon_7qs9rgy6_ON_T');
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons.lightbulb_outline_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ih9znwta' /* Adjust and modify  Tools to ma... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
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
                                                                  'ldbt73zp' /* Search */,
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
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 540.0,
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
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
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
                                                          Icons.numbers_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          flex: 7,
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'd5d3llc3' /* Name */,
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
                                                              'xpak5naj' /* Permission */,
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
                                                              '46u4lmf7' /* Status */,
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
                                                    decoration: BoxDecoration(),
                                                    child:
                                                        SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ListView(
                                                            padding:
                                                                EdgeInsets.zero,
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
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'y5nsp5vu' /* Sign Date */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1sonhzn1' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'pxooss1a' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.date_range,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'n04vvpv8' /* Signature */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '671egtdm' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'fwz1aqju' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            FaIcon(
                                                                              FontAwesomeIcons.signature,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'm0clnc8z' /* Initial */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bab6zhto' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'pu6tz6io' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.add_task,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'galekenf' /* Name */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'fwl9cvyf' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'q9e8qvg7' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.person_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'c12qn7pk' /* Email */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'isypq3no' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hnor35gv' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.mail_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'azdidjw2' /* Phone Number */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '9oa9t65m' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  's3ohxd1l' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.phone_enabled_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'fz1gbix7' /* Text */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'tsmck41t' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'sxeut4g3' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.text_fields,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
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
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.view_compact,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'msswypo5' /* Select */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hxjd1gje' /* Enable */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7r0fal0f' /* Process */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              Icons.arrow_drop_down_circle_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 5.0)).addToEnd(SizedBox(width: 5.0)),
                                                                        ),
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
                                    height: 490.0,
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
                                                  20.0, 20.0, 20.0, 20.0),
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
                                                      'CONFIGURATION_SETTING_Icon_1uzwqb8p_ON_T');
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons.lightbulb_outline_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8yei5ifa' /* Adjust and modify Sign to matc... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
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
                                                child: Builder(
                                                  builder: (context) => InkWell(
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
                                                          'CONFIGURATION_SETTING_Container_vsexv49s');
                                                      await showAlignedDialog(
                                                        context: context,
                                                        isGlobal: false,
                                                        avoidOverflow: false,
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
                                                              width: 410.0,
                                                              child:
                                                                  ComponentSearchFilterWidget(),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 410.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  10.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  10.0),
                                                        ),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    5.0,
                                                                    10.0,
                                                                    5.0),
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
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5e50bexe' /* Search */,
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
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
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
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
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
                                                                    'q6c7wl2k' /* Name */,
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
                                                                      '5s2fmk4p' /* Audit Log */,
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
                                                                      'pq2q1x7c' /* Status */,
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
                                                                                  '42p2w2ta' /* ក្រសួងមហាផ្ទៃ */,
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
                                                                                    '8933cwbu' /* Process */,
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
                                                                                    logFirebaseEvent('CONFIGURATION_SETTING_more_vert_ICN_ON_T');
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
                                                                                  '2crqdcq0' /* ក្រសួងសសាធារណការណ៍ និងដឹកជញ្ជូ... */,
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
                                                                                    '6dtxtle7' /* Process */,
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
                                                                              'CONFIGURATION_SETTING_more_vert_ICN_ON_T');
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
                                                                                  'i3q0y32u' /* ក្រសួងរ៉ែ និងថាមពល */,
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
                                                                                    '5opygpvb' /* Process */,
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
                                                                              'CONFIGURATION_SETTING_more_vert_ICN_ON_T');
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
                                                                                  '0r31ku33' /* ក្រសួងធនរ៉ែ និងថាមពល */,
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
                                                                                    '34aax3yo' /* Process */,
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
                                                                              'CONFIGURATION_SETTING_more_vert_ICN_ON_T');
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
