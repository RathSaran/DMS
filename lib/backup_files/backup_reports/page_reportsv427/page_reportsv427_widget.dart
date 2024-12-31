import '/components/common_elements/page_header/page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_reportsv427_model.dart';
export 'page_reportsv427_model.dart';

class PageReportsv427Widget extends StatefulWidget {
  const PageReportsv427Widget({super.key});

  @override
  State<PageReportsv427Widget> createState() => _PageReportsv427WidgetState();
}

class _PageReportsv427WidgetState extends State<PageReportsv427Widget> {
  late PageReportsv427Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageReportsv427Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PageReportsv427'});
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
        appBar: !isWeb
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    '7zr7czh3' /* Contracts */,
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
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
                        iconTwo: FaIcon(
                          FontAwesomeIcons.signature,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        iconThree: Icon(
                          Icons.stacked_bar_chart_outlined,
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        iconFour: Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        colorBgOne:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        colorBgTwo:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        colorBgThree:
                            FlutterFlowTheme.of(context).primaryBackground,
                        colorBgFour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        textOne: FlutterFlowTheme.of(context).secondaryText,
                        textTwo: FlutterFlowTheme.of(context).secondaryText,
                        textThree: FlutterFlowTheme.of(context).primaryText,
                        textFour: FlutterFlowTheme.of(context).secondaryText,
                        iconFive: Icon(
                          Icons.folder_open_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        colorBgFive:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        textFive: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  Expanded(
                    child: Container(
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
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
                              height: 34.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          wrapWithModel(
                            model: _model.pageHeaderModel,
                            updateCallback: () => safeSetState(() {}),
                            child: PageHeaderWidget(
                              title: 'Reports',
                              isNotifications: false,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 15.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController1 ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              '2ac272vi' /* Executive Summary */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '5xoygoao' /* Activity Log */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownValue1 = val),
                                          width: 200.0,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '0c8k1y3p' /* Executive Summary */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 0.0,
                                          borderRadius: 4.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.date_range_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 20.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '68fkujgk' /* 01 Sep,  2024 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: 200.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          6.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.auto_graph,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 20.0,
                                                  ),
                                                ),
                                                FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController2 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2uufl7xp' /* No Comparison */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'avnxsl8x' /* Previous Period Day */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd51yff30' /* Previous Last Year */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2k65397h' /* Specific Date */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownValue2 =
                                                          val),
                                                  width: 170.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'zyyzwd9y' /* No Comparison */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController3 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kuz9z5fg' /* PDF */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5bfnly34' /* CSV */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'urgpxjt4' /* Excel */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownValue3 =
                                                          val),
                                                  width: 100.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'mrloxjwr' /* Export */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.download_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 20.0,
                                                  ),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 4.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 5.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                height: 630.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wkz5tkvb' /* Electricite du Cambodge (EDC) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1z7zjxi8' /* Executive Summary */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '079ufmfn' /* Date: 01 Sep 2024 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              Divider(
                                                thickness: 0.5,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.paginationPanelModel,
                            updateCallback: () => safeSetState(() {}),
                            child: PaginationPanelWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
