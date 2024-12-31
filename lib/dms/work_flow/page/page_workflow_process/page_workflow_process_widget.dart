import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/dms/documents/component_of_documents/component_process_document/component_process_document_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_add_field_property/component_sign_add_field_property_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_file_no/component_sign_file_no_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_remove_doc/component_sign_remove_doc_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_workflow_process_model.dart';
export 'page_workflow_process_model.dart';

class PageWorkflowProcessWidget extends StatefulWidget {
  const PageWorkflowProcessWidget({
    super.key,
    bool? isDocUpload,
    this.docUploaded,
    this.docName,
    this.msgDesC,
    this.receiveN,
    this.sendN,
    int? sensitivity,
    this.priority,
  })  : this.isDocUpload = isDocUpload ?? true,
        this.sensitivity = sensitivity ?? 0;

  final bool isDocUpload;
  final String? docUploaded;
  final String? docName;
  final String? msgDesC;
  final String? receiveN;
  final String? sendN;
  final int sensitivity;
  final int? priority;

  @override
  State<PageWorkflowProcessWidget> createState() =>
      _PageWorkflowProcessWidgetState();
}

class _PageWorkflowProcessWidgetState extends State<PageWorkflowProcessWidget> {
  late PageWorkflowProcessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageWorkflowProcessModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PageWorkflowProcess'});
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: !isWeb
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    'its7mru4' /* Customers */,
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
                  colorBgThree:
                      FlutterFlowTheme.of(context).secondaryBackground,
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
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      wrapWithModel(
                        model: _model.navigateBackPageHeaderModel,
                        updateCallback: () => safeSetState(() {}),
                        child: NavigateBackPageHeaderWidget(
                          previousPage: FFLocalizations.of(context).getText(
                            'ax13aos2' /* Document Flow */,
                          ),
                          title: FFLocalizations.of(context).getText(
                            'j2igaibn' /* Document Flow */,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Wrap(
                                        spacing: 35.0,
                                        runSpacing: 10.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.antiAlias,
                                        children: [
                                          if (widget!.isDocUpload)
                                            Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 210.0,
                                                maxHeight: 350.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      FlutterFlowPdfViewer(
                                                        networkPath:
                                                            valueOrDefault<
                                                                String>(
                                                          widget!.docUploaded,
                                                          'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/documents/1727436457404000.pdf',
                                                        ),
                                                        width: 210.0,
                                                        height: 280.0,
                                                        horizontalScroll: false,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -0.88),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
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
                                                                        'WORKFLOW_PROCESS_Icon_ilmzbe4c_ON_TAP');
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
                                                                              1.0,
                                                                              1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      followerAnchor: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                ComponentSignRemoveDocWidget(
                                                                              docURL: widget!.docUploaded,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .more_vert_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 26.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 40.0,
                                                    constraints: BoxConstraints(
                                                      maxWidth: 200.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'w27j05qf' /* លិខិតលេខ_១២៣_ផ_ប_ក_ដាក់ជូនលោកន... */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 210.0,
                                                maxHeight: 350.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      FlutterFlowPdfViewer(
                                                        networkPath:
                                                            'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/documents/1727436457404000.pdf',
                                                        width: 210.0,
                                                        height: 280.0,
                                                        horizontalScroll: false,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .more_vert_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 26.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 40.0,
                                                    constraints: BoxConstraints(
                                                      maxWidth: 200.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gwy7tvmw' /* លិខិតដាក់ជូនលោកនាយក */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 210.0,
                                                maxHeight: 350.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      FlutterFlowPdfViewer(
                                                        networkPath:
                                                            'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/documents/1727436457404000.pdf',
                                                        width: 210.0,
                                                        height: 280.0,
                                                        horizontalScroll: false,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .more_vert_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 26.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 40.0,
                                                    constraints: BoxConstraints(
                                                      maxWidth: 200.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7zewm9w5' /* លិខិតលេខ ១២៣ ក.ណ ដាក់ជូនលោកនាយ... */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          Container(
                                            constraints: BoxConstraints(
                                              maxWidth: 210.0,
                                              maxHeight: 350.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: wrapWithModel(
                                              model: _model
                                                  .componentSignFileNoModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  ComponentSignFileNoWidget(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .myTextFieldReceiveNOModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MyTextFieldWidget(
                                                    xLabel: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'avm4d2wb' /* Receive NO */,
                                                    ),
                                                    isRequired: '*',
                                                    initialValue:
                                                        widget!.receiveN,
                                                    viewOnly: false,
                                                    hint: 'R0000001',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .myTextFieldSendNOModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MyTextFieldWidget(
                                                    xLabel: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'lazwzvbf' /* Send NO */,
                                                    ),
                                                    isRequired: '*',
                                                    initialValue: widget!.sendN,
                                                    viewOnly: false,
                                                    hint: 'S0000001',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .myTextFieldDocNameModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MyTextFieldWidget(
                                                    xLabel: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '7stleola' /* Name */,
                                                    ),
                                                    isRequired: '*',
                                                    initialValue:
                                                        widget!.docName,
                                                    viewOnly: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'ywg3lp0r' /* Folder */,
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
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
                                                        List<FolderRow>>(
                                                      future: FolderTable()
                                                          .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'type',
                                                          'folder',
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
                                                            dropDownFolderFolderRowList =
                                                            snapshot.data!;

                                                        return FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownFolderValueController ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options:
                                                              dropDownFolderFolderRowList
                                                                  .map((e) =>
                                                                      valueOrDefault<
                                                                          String>(
                                                                        e.name,
                                                                        'test',
                                                                      ))
                                                                  .toList(),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.dropDownFolderValue =
                                                                    val);
                                                            logFirebaseEvent(
                                                                'WORKFLOW_PROCESS_DropDownFolder_ON_FORM_');
                                                            _model.items =
                                                                await FolderTable()
                                                                    .queryRows(
                                                              queryFn: (q) =>
                                                                  q.eqOrNull(
                                                                'type',
                                                                'folder',
                                                              ),
                                                            );

                                                            safeSetState(() {});
                                                          },
                                                          width:
                                                              double.infinity,
                                                          height: 50.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'tmanw9ob' /* Add To Folder */,
                                                          ),
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          elevation: 4.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          borderWidth: 2.0,
                                                          borderRadius: 10.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'duvsmwry' /* Priority */,
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<int>(
                                                      controller: _model
                                                              .ddPriorityValueController ??=
                                                          FormFieldController<
                                                              int>(
                                                        _model.ddPriorityValue ??=
                                                            widget!.priority,
                                                      ),
                                                      options: List<int>.from(
                                                          [1, 2, 3, 4]),
                                                      optionLabels: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'axynpm8e' /* Urgent */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tbz0lgog' /* High */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'waw5xqh4' /* Medium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5xep6okw' /* Low */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.ddPriorityValue =
                                                                  val),
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'k5nevedm' /* Select Priority */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      elevation: 4.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      borderWidth: 2.0,
                                                      borderRadius: 10.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
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
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '1e2uuj99' /* Sensitivity */,
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<int>(
                                                      controller: _model
                                                              .ddSensitivityValueController ??=
                                                          FormFieldController<
                                                              int>(
                                                        _model.ddSensitivityValue ??=
                                                            widget!.sensitivity,
                                                      ),
                                                      options: List<int>.from(
                                                          [1, 2, 3, 4]),
                                                      optionLabels: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'brvr23qc' /* Normal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kkr7om96' /* Personal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9gfbqkba' /* Private */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tqgus76c' /* Confidential */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.ddSensitivityValue =
                                                                  val),
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '5b9uwttd' /* Select Sensitivity */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      elevation: 4.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      borderWidth: 2.0,
                                                      borderRadius: 10.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '5wbfq62e' /* Category */,
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<String>(
                                                      controller: _model
                                                              .documentTagValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.documentTagValue ??=
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'spwcppa8' /* Contracts */,
                                                        ),
                                                      ),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mr1dqi16' /* Contracts */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '033ebcxn' /* Invoices */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c4d5bqam' /* Proposals */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e91fqxi1' /* Reports */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.documentTagValue =
                                                                  val),
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'sqbqhnsk' /* Select Category */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      elevation: 4.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      borderWidth: 2.0,
                                                      borderRadius: 10.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
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
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.myTextFieldModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MyTextFieldWidget(
                                                    xLabel: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'a5zcepci' /* Description */,
                                                    ),
                                                    isRequired: ' ',
                                                    initialValue:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '8hm57f1a' /* Description for  documents. */,
                                                    ),
                                                    viewOnly: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            if (_model.trickAddField)
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .myTextFieldModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            MyTextFieldWidget(
                                                          xLabel:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'xwiv6j0b' /* Note */,
                                                          ),
                                                          isRequired: ' ',
                                                          initialValue:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'v80qkkjh' /*  Note */,
                                                          ),
                                                          viewOnly: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'WORKFLOW_PROCESS_Icon_ac24sp3d_ON_TAP');
                                                            _model.trickAddField =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_forever_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'WORKFLOW_PROCESS_Text_90ihng6o_ON_TAP');
                                                  await showAlignedDialog(
                                                    barrierColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    isGlobal: false,
                                                    avoidOverflow: true,
                                                    targetAnchor:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    followerAnchor:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    builder: (dialogContext) {
                                                      return Material(
                                                        color:
                                                            Colors.transparent,
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              ComponentSignAddFieldPropertyWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  _model.trickAddField = true;
                                                  safeSetState(() {});
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k8e8266z' /* Add Field */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(SizedBox(height: 10.0))
                                          .around(SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.componentProcessDocumentModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ComponentProcessDocumentWidget(
                                    descriptionMsg: widget!.msgDesC,
                                  ),
                                ),
                              ]
                                  .divide(SizedBox(height: 15.0))
                                  .addToStart(SizedBox(height: 15.0))
                                  .addToEnd(SizedBox(height: 5.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'WORKFLOW_PROCESS_ButtonSave_ON_TAP');
                                  _model.validateTitle = true;
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    safeSetState(
                                        () => _model.validateTitle = false);
                                    return;
                                  }
                                  await FolderTable().insert({
                                    'id': random_data.randomInteger(0, 10000),
                                    'created_at': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'size':
                                        random_data.randomDouble(1.0, 99.99),
                                    'active': true,
                                    'user_id': currentUserUid,
                                    'trash': false,
                                    'type': 'file',
                                    'updated_date': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'user_profile': FFAppState().profileUrl,
                                    'path_url': widget!.docUploaded,
                                    'status': 1,
                                    'tabs': 4,
                                    'unit': 'B',
                                    'file_name': _model.myTextFieldDocNameModel
                                        .textController.text,
                                    'name': _model.dropDownFolderValue,
                                    'last_modify': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'favorite_folder': false,
                                    'share_with': false,
                                    'parent_path':
                                        '/documents/${_model.dropDownFolderValue}/',
                                    'msg_descriptios': _model
                                        .componentProcessDocumentModel
                                        .tfMsgDescriptionTextController
                                        .text,
                                    'priority': _model.ddPriorityValue,
                                    'sensitivity': _model.ddSensitivityValue,
                                  });

                                  context.pushNamed(
                                    'PageMainWorkflow',
                                    queryParameters: {
                                      'tabIndex': serializeParam(
                                        3,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  '730eu169' /* Save */,
                                ),
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 1.0,
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'WORKFLOW_PROCESS_NEXT_BTN_ON_TAP');
                                  _model.validate = true;
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    safeSetState(() => _model.validate = false);
                                    return;
                                  }

                                  context.pushNamed(
                                    'PagePrepareSignature',
                                    queryParameters: {
                                      'docUploadedId': serializeParam(
                                        widget!.docUploaded,
                                        ParamType.String,
                                      ),
                                      'docName': serializeParam(
                                        _model.myTextFieldDocNameModel
                                            .textController.text,
                                        ParamType.String,
                                      ),
                                      'isFromMain': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                      'isSignMyself': serializeParam(
                                        _model.componentProcessDocumentModel
                                            .cbSignMyselfValue,
                                        ParamType.bool,
                                      ),
                                      'selectedFolder': serializeParam(
                                        _model.dropDownFolderValue,
                                        ParamType.String,
                                      ),
                                      'validateDate': serializeParam(
                                        _model.componentProcessDocumentModel
                                            .datePicked,
                                        ParamType.DateTime,
                                      ),
                                      'msgDescription': serializeParam(
                                        _model
                                            .componentProcessDocumentModel
                                            .tfMsgDescriptionTextController
                                            .text,
                                        ParamType.String,
                                      ),
                                      'receiveNO': serializeParam(
                                        _model.myTextFieldReceiveNOModel
                                            .textController.text,
                                        ParamType.String,
                                      ),
                                      'sendNO': serializeParam(
                                        _model.myTextFieldSendNOModel
                                            .textController.text,
                                        ParamType.String,
                                      ),
                                      'priority': serializeParam(
                                        _model.ddPriorityValue,
                                        ParamType.int,
                                      ),
                                      'sensitivity': serializeParam(
                                        _model.ddSensitivityValue,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  '3vngcf37' /* Next */,
                                ),
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 1.0,
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ].divide(SizedBox(width: 15.0)),
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
    );
  }
}