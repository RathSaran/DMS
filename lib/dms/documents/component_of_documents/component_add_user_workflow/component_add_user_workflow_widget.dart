import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_add_user_workflow_model.dart';
export 'component_add_user_workflow_model.dart';

class ComponentAddUserWorkflowWidget extends StatefulWidget {
  const ComponentAddUserWorkflowWidget({super.key});

  @override
  State<ComponentAddUserWorkflowWidget> createState() =>
      _ComponentAddUserWorkflowWidgetState();
}

class _ComponentAddUserWorkflowWidgetState
    extends State<ComponentAddUserWorkflowWidget> {
  late ComponentAddUserWorkflowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentAddUserWorkflowModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_ComponentAdd');
      _model.allDepartments = await DepartmentsTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          1,
        ),
      );
    });

    _model.searchTextController ??= TextEditingController();
    _model.searchFocusNode ??= FocusNode();

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 710.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0x7F6F61EF),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'twun9zb3' /* Choose User or Department */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '1ghn1kfi' /* Choose Severity */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: FutureBuilder<List<SeverityRow>>(
                        future: FFAppState().serverityCached(
                          requestFn: () => SeverityTable().queryRows(
                            queryFn: (q) => q,
                          ),
                        ),
                        builder: (context, snapshot) {
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
                          List<SeverityRow> containerSeverityRowList =
                              snapshot.data!;

                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 10.0, 5.0),
                              child: Wrap(
                                spacing: 5.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final serverities =
                                          FFAppState().serverity.toList();

                                      return Wrap(
                                        spacing: 4.5,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children:
                                            List.generate(serverities.length,
                                                (serveritiesIndex) {
                                          final serveritiesItem =
                                              serverities[serveritiesIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 5.0, 5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        serveritiesItem,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
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
                                                            'COMPONENT_ADD_USER_WORKFLOW_Icon_mwncecq');
                                                        FFAppState()
                                                            .removeAtIndexFromServerity(
                                                                serveritiesIndex);
                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.close,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .dangerButton,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                  Container(
                                    width: 160.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController1 ??=
                                              FormFieldController<String>(null),
                                      options: containerSeverityRowList
                                          .map((e) => valueOrDefault<String>(
                                                e.name,
                                                '-',
                                              ))
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(
                                            () => _model.dropDownValue1 = val);
                                        logFirebaseEvent(
                                            'COMPONENT_ADD_USER_WORKFLOW_DropDown_swc');
                                        FFAppState().addToServerity(
                                            _model.dropDownValue1!);
                                        safeSetState(() {});
                                      },
                                      width: 180.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '3bfgpgdc' /* Select serverity */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 10.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'dlizl98p' /* Choose User or Department */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).alternate,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue1 ??= false,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.checkboxValue1 = newValue!);
                                if (newValue!) {
                                  logFirebaseEvent(
                                      'COMPONENT_ADD_USER_WORKFLOW_Checkbox_9nl');
                                  _model.selectAll = true;
                                  safeSetState(() {});
                                } else {
                                  logFirebaseEvent(
                                      'COMPONENT_ADD_USER_WORKFLOW_Checkbox_9nl');
                                  _model.selectAll = false;
                                  safeSetState(() {});
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'tead6f9t' /* Select All */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 200.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: 200.0,
                                          child: TextFormField(
                                            controller:
                                                _model.searchTextController,
                                            focusNode: _model.searchFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'exb10lty' /* Search more */,
                                              ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            textAlign: TextAlign.start,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .searchTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.search,
                                        color: Color(0xFF7C8791),
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child:
                                          FutureBuilder<List<DepartmentsRow>>(
                                        future:
                                            FFAppState().filderOrganizations(
                                          requestFn: () =>
                                              DepartmentsTable().queryRows(
                                            queryFn: (q) => q
                                                .eqOrNull(
                                                  'parentId',
                                                  0,
                                                )
                                                .order('id', ascending: true),
                                          ),
                                        ),
                                        builder: (context, snapshot) {
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<DepartmentsRow>
                                              dropDownDepartmentsRowList =
                                              snapshot.data!;

                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController2 ??=
                                                FormFieldController<String>(
                                              _model.dropDownValue2 ??=
                                                  dropDownDepartmentsRowList
                                                      .firstOrNull?.nameEng,
                                            ),
                                            options: dropDownDepartmentsRowList
                                                .map((e) => e.nameEng)
                                                .withoutNulls
                                                .toList(),
                                            onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue2 =
                                                    val),
                                            width: 150.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          );
                                        },
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
                    if (_model.dropDownValue2 != 'ទាំងអស់')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 320.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: FutureBuilder<List<DepartmentsRow>>(
                            future: DepartmentsTable().queryRows(
                              queryFn: (q) => q
                                  .neqOrNull(
                                    'id',
                                    1,
                                  )
                                  .eqOrNull(
                                    'parentId',
                                    0,
                                  )
                                  .eqOrNull(
                                    'name_eng',
                                    _model.dropDownValue2,
                                  ),
                            ),
                            builder: (context, snapshot) {
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
                              List<DepartmentsRow> listViewDepartmentsRowList =
                                  snapshot.data!;

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewDepartmentsRowList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewDepartmentsRow =
                                      listViewDepartmentsRowList[listViewIndex];
                                  return Container(
                                    width: double.infinity,
                                    color: Color(0x00000000),
                                    child: ExpandableNotifier(
                                      initialExpanded: true,
                                      child: ExpandablePanel(
                                        header: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
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
                                                          .alternate,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                              .checkboxValueMap2[
                                                          listViewDepartmentsRow] ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() => _model
                                                                .checkboxValueMap2[
                                                            listViewDepartmentsRow] =
                                                        newValue!);
                                                    if (newValue!) {
                                                      logFirebaseEvent(
                                                          'COMPONENT_ADD_USER_WORKFLOW_Checkbox_1ps');
                                                      FFAppState()
                                                          .addToDepartmentId(
                                                              listViewDepartmentsRow
                                                                  .id
                                                                  .toString());
                                                      safeSetState(() {});
                                                    } else {
                                                      logFirebaseEvent(
                                                          'COMPONENT_ADD_USER_WORKFLOW_Checkbox_1ps');
                                                      FFAppState()
                                                          .removeAtIndexFromDepartmentId(
                                                              listViewIndex);
                                                      safeSetState(() {});
                                                    }
                                                  },
                                                  side: BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  listViewDepartmentsRow
                                                      .nameEng,
                                                  '-',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ),
                                        collapsed: Container(
                                          decoration: BoxDecoration(),
                                        ),
                                        expanded: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 0.0, 0.0, 0.0),
                                          child: FutureBuilder<
                                              List<DepartmentsRow>>(
                                            future: DepartmentsTable()
                                                .querySingleRow(
                                              queryFn: (q) => q.eqOrNull(
                                                'parentId',
                                                listViewDepartmentsRow.id,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
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
                                              List<DepartmentsRow>
                                                  listUserDepartmentsRowList =
                                                  snapshot.data!;

                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final listUserDepartmentsRow =
                                                  listUserDepartmentsRowList
                                                          .isNotEmpty
                                                      ? listUserDepartmentsRowList
                                                          .first
                                                      : null;

                                              return ListView(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  FutureBuilder<List<UsersRow>>(
                                                    future:
                                                        UsersTable().queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'organisationID',
                                                        listViewDepartmentsRow
                                                            .id,
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
                                                      List<UsersRow>
                                                          columnUsersRowList =
                                                          snapshot.data!;

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            columnUsersRowList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnUsersRow =
                                                              columnUsersRowList[
                                                                  columnIndex];
                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
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
                                                                          .alternate,
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .selectUserValueMap1[
                                                                      columnUsersRow] ??= _model
                                                                              .selectAll ==
                                                                          true
                                                                      ? true
                                                                      : false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.selectUserValueMap1[columnUsersRow] =
                                                                            newValue!);
                                                                    if (newValue!) {
                                                                      logFirebaseEvent(
                                                                          'COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                      FFAppState()
                                                                          .addToUserIds(
                                                                              columnUsersRow.id);
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                      FFAppState()
                                                                          .removeAtIndexFromUserIds(
                                                                              columnIndex);
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  side:
                                                                      BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnUsersRow
                                                                          .profileUrl,
                                                                      'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                    ),
                                                                    width: 32.0,
                                                                    height:
                                                                        32.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          columnUsersRow
                                                                              .username,
                                                                          '-',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 5.0)),
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    color: Color(0x00000000),
                                                    child: ExpandableNotifier(
                                                      initialExpanded: true,
                                                      child: ExpandablePanel(
                                                        header: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
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
                                                                          .alternate,
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .checkboxValueMap3[
                                                                      listViewDepartmentsRow] ??= false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.checkboxValueMap3[listViewDepartmentsRow] =
                                                                            newValue!);
                                                                    if (newValue!) {
                                                                      logFirebaseEvent(
                                                                          'COMPONENT_ADD_USER_WORKFLOW_Checkbox_mc3');
                                                                      FFAppState().addToDepartmentId(
                                                                          listUserDepartmentsRow!
                                                                              .id
                                                                              .toString());
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'COMPONENT_ADD_USER_WORKFLOW_Checkbox_mc3');
                                                                      FFAppState()
                                                                          .removeAtIndexFromDepartmentId(
                                                                              listViewIndex);
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  side:
                                                                      BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listUserDepartmentsRow
                                                                      ?.nameEng,
                                                                  '-',
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
                                                            ].divide(SizedBox(
                                                                width: 5.0)),
                                                          ),
                                                        ),
                                                        collapsed: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                        expanded: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      30.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  DepartmentsRow>>(
                                                            future: DepartmentsTable()
                                                                .querySingleRow(
                                                              queryFn: (q) =>
                                                                  q.eqOrNull(
                                                                'parentId',
                                                                listUserDepartmentsRow
                                                                    ?.id,
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
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<DepartmentsRow>
                                                                  listUserDepartmentsRowList =
                                                                  snapshot
                                                                      .data!;

                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final listUserDepartmentsRow =
                                                                  listUserDepartmentsRowList
                                                                          .isNotEmpty
                                                                      ? listUserDepartmentsRowList
                                                                          .first
                                                                      : null;

                                                              return ListView(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                children: [
                                                                  FutureBuilder<
                                                                      List<
                                                                          UsersRow>>(
                                                                    future: UsersTable()
                                                                        .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eqOrNull(
                                                                        'organisationID',
                                                                        listUserDepartmentsRow
                                                                            ?.parentId,
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
                                                                      List<UsersRow>
                                                                          columnUsersRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            columnUsersRowList.length,
                                                                            (columnIndex) {
                                                                          final columnUsersRow =
                                                                              columnUsersRowList[columnIndex];
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
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
                                                                                  value: _model.selectUserValueMap2[columnUsersRow] ??= _model.selectAll == true ? true : false,
                                                                                  onChanged: (newValue) async {
                                                                                    safeSetState(() => _model.selectUserValueMap2[columnUsersRow] = newValue!);
                                                                                    if (newValue!) {
                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                      FFAppState().addToUserIds(columnUsersRow.id);
                                                                                      safeSetState(() {});
                                                                                    } else {
                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                      FFAppState().removeAtIndexFromUserIds(columnIndex);
                                                                                      safeSetState(() {});
                                                                                    }
                                                                                  },
                                                                                  side: BorderSide(
                                                                                    width: 2,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                  ),
                                                                                  activeColor: FlutterFlowTheme.of(context).primary,
                                                                                  checkColor: FlutterFlowTheme.of(context).info,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(40.0),
                                                                                  child: Image.network(
                                                                                    valueOrDefault<String>(
                                                                                      columnUsersRow.profileUrl,
                                                                                      'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                    ),
                                                                                    width: 32.0,
                                                                                    height: 32.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          columnUsersRow.username,
                                                                                          '-',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(width: 5.0)),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    color: Color(
                                                                        0x00000000),
                                                                    child:
                                                                        ExpandableNotifier(
                                                                      initialExpanded:
                                                                          true,
                                                                      child:
                                                                          ExpandablePanel(
                                                                        header:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
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
                                                                                  value: _model.checkboxValueMap4[listViewDepartmentsRow] ??= false,
                                                                                  onChanged: (newValue) async {
                                                                                    safeSetState(() => _model.checkboxValueMap4[listViewDepartmentsRow] = newValue!);
                                                                                    if (newValue!) {
                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_uh4');
                                                                                      FFAppState().addToDepartmentId(listUserDepartmentsRow!.id.toString());
                                                                                      safeSetState(() {});
                                                                                    } else {
                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_uh4');
                                                                                      FFAppState().removeAtIndexFromDepartmentId(listViewIndex);
                                                                                      safeSetState(() {});
                                                                                    }
                                                                                  },
                                                                                  side: BorderSide(
                                                                                    width: 2,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                  ),
                                                                                  activeColor: FlutterFlowTheme.of(context).primary,
                                                                                  checkColor: FlutterFlowTheme.of(context).info,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  listUserDepartmentsRow?.nameEng,
                                                                                  '-',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ].divide(SizedBox(width: 5.0)),
                                                                          ),
                                                                        ),
                                                                        collapsed:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                        ),
                                                                        expanded:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              30.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FutureBuilder<List<DepartmentsRow>>(
                                                                            future:
                                                                                DepartmentsTable().querySingleRow(
                                                                              queryFn: (q) => q.eqOrNull(
                                                                                'parentId',
                                                                                listUserDepartmentsRow?.id,
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
                                                                              List<DepartmentsRow> listUserDepartmentsRowList = snapshot.data!;

                                                                              // Return an empty Container when the item does not exist.
                                                                              if (snapshot.data!.isEmpty) {
                                                                                return Container();
                                                                              }
                                                                              final listUserDepartmentsRow = listUserDepartmentsRowList.isNotEmpty ? listUserDepartmentsRowList.first : null;

                                                                              return ListView(
                                                                                padding: EdgeInsets.zero,
                                                                                primary: false,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                children: [
                                                                                  FutureBuilder<List<UsersRow>>(
                                                                                    future: UsersTable().queryRows(
                                                                                      queryFn: (q) => q.eqOrNull(
                                                                                        'organisationID',
                                                                                        listUserDepartmentsRow?.parentId,
                                                                                      ),
                                                                                    ),
                                                                                    builder: (context, snapshot) {
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
                                                                                      List<UsersRow> columnUsersRowList = snapshot.data!;

                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnUsersRowList.length, (columnIndex) {
                                                                                          final columnUsersRow = columnUsersRowList[columnIndex];
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
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
                                                                                                  value: _model.selectUserValueMap3[columnUsersRow] ??= _model.selectAll == true ? true : false,
                                                                                                  onChanged: (newValue) async {
                                                                                                    safeSetState(() => _model.selectUserValueMap3[columnUsersRow] = newValue!);
                                                                                                    if (newValue!) {
                                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                      FFAppState().addToUserIds(columnUsersRow.id);
                                                                                                      safeSetState(() {});
                                                                                                    } else {
                                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                      FFAppState().removeAtIndexFromUserIds(columnIndex);
                                                                                                      safeSetState(() {});
                                                                                                    }
                                                                                                  },
                                                                                                  side: BorderSide(
                                                                                                    width: 2,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                  ),
                                                                                                  activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                  checkColor: FlutterFlowTheme.of(context).info,
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(40.0),
                                                                                                  child: Image.network(
                                                                                                    valueOrDefault<String>(
                                                                                                      columnUsersRow.profileUrl,
                                                                                                      'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                    ),
                                                                                                    width: 32.0,
                                                                                                    height: 32.0,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Flexible(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          columnUsersRow.username,
                                                                                                          '-',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(SizedBox(width: 5.0)),
                                                                                          );
                                                                                        }),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  Container(
                                                                                    width: double.infinity,
                                                                                    color: Color(0x00000000),
                                                                                    child: ExpandableNotifier(
                                                                                      initialExpanded: true,
                                                                                      child: ExpandablePanel(
                                                                                        header: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
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
                                                                                                  value: _model.checkboxValueMap5[listViewDepartmentsRow] ??= false,
                                                                                                  onChanged: (newValue) async {
                                                                                                    safeSetState(() => _model.checkboxValueMap5[listViewDepartmentsRow] = newValue!);
                                                                                                    if (newValue!) {
                                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_rgq');
                                                                                                      FFAppState().addToDepartmentId(listUserDepartmentsRow!.id.toString());
                                                                                                      safeSetState(() {});
                                                                                                    } else {
                                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_rgq');
                                                                                                      FFAppState().removeAtIndexFromDepartmentId(listViewIndex);
                                                                                                      safeSetState(() {});
                                                                                                    }
                                                                                                  },
                                                                                                  side: BorderSide(
                                                                                                    width: 2,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                  ),
                                                                                                  activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                  checkColor: FlutterFlowTheme.of(context).info,
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listUserDepartmentsRow?.nameEng,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(SizedBox(width: 5.0)),
                                                                                          ),
                                                                                        ),
                                                                                        collapsed: Container(
                                                                                          decoration: BoxDecoration(),
                                                                                        ),
                                                                                        expanded: ListView(
                                                                                          padding: EdgeInsets.zero,
                                                                                          shrinkWrap: true,
                                                                                          scrollDirection: Axis.vertical,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                                                                                              child: FutureBuilder<List<UsersRow>>(
                                                                                                future: UsersTable().queryRows(
                                                                                                  queryFn: (q) => q.eqOrNull(
                                                                                                    'organisationID',
                                                                                                    listUserDepartmentsRow?.id,
                                                                                                  ),
                                                                                                ),
                                                                                                builder: (context, snapshot) {
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
                                                                                                  List<UsersRow> columnUsersRowList = snapshot.data!;

                                                                                                  return Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: List.generate(columnUsersRowList.length, (columnIndex) {
                                                                                                      final columnUsersRow = columnUsersRowList[columnIndex];
                                                                                                      return Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
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
                                                                                                              value: _model.selectUserValueMap4[columnUsersRow] ??= _model.selectAll == true ? true : false,
                                                                                                              onChanged: (newValue) async {
                                                                                                                safeSetState(() => _model.selectUserValueMap4[columnUsersRow] = newValue!);
                                                                                                                if (newValue!) {
                                                                                                                  logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                                  FFAppState().addToUserIds(columnUsersRow.id);
                                                                                                                  safeSetState(() {});
                                                                                                                } else {
                                                                                                                  logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                                  FFAppState().removeAtIndexFromUserIds(columnIndex);
                                                                                                                  safeSetState(() {});
                                                                                                                }
                                                                                                              },
                                                                                                              side: BorderSide(
                                                                                                                width: 2,
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                              ),
                                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                              checkColor: FlutterFlowTheme.of(context).info,
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: ClipRRect(
                                                                                                              borderRadius: BorderRadius.circular(40.0),
                                                                                                              child: Image.network(
                                                                                                                valueOrDefault<String>(
                                                                                                                  columnUsersRow.profileUrl,
                                                                                                                  'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                                ),
                                                                                                                width: 32.0,
                                                                                                                height: 32.0,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Flexible(
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                children: [
                                                                                                                  Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      columnUsersRow.username,
                                                                                                                      '-',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ].divide(SizedBox(width: 5.0)),
                                                                                                      );
                                                                                                    }),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        theme: ExpandableThemeData(
                                                                                          tapHeaderToExpand: true,
                                                                                          tapBodyToExpand: true,
                                                                                          tapBodyToCollapse: true,
                                                                                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                          hasIcon: true,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                        theme:
                                                                            ExpandableThemeData(
                                                                          tapHeaderToExpand:
                                                                              true,
                                                                          tapBodyToExpand:
                                                                              true,
                                                                          tapBodyToCollapse:
                                                                              true,
                                                                          headerAlignment:
                                                                              ExpandablePanelHeaderAlignment.center,
                                                                          hasIcon:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        theme:
                                                            ExpandableThemeData(
                                                          tapHeaderToExpand:
                                                              true,
                                                          tapBodyToExpand: true,
                                                          tapBodyToCollapse:
                                                              true,
                                                          headerAlignment:
                                                              ExpandablePanelHeaderAlignment
                                                                  .center,
                                                          hasIcon: true,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: true,
                                          tapBodyToExpand: false,
                                          tapBodyToCollapse: false,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
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
                    if (_model.dropDownValue2 == 'ទាំងអស់')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: FutureBuilder<List<DepartmentsRow>>(
                          future: DepartmentsTable().queryRows(
                            queryFn: (q) => q
                                .eqOrNull(
                                  'parentId',
                                  0,
                                )
                                .order('id', ascending: true),
                          ),
                          builder: (context, snapshot) {
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
                            List<DepartmentsRow> containerDepartmentsRowList =
                                snapshot.data!;

                            return Container(
                              width: double.infinity,
                              height: 320.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                              ),
                              child: FutureBuilder<List<DepartmentsRow>>(
                                future: DepartmentsTable().queryRows(
                                  queryFn: (q) => q
                                      .neqOrNull(
                                        'id',
                                        1,
                                      )
                                      .eqOrNull(
                                        'parentId',
                                        0,
                                      ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                                    itemCount:
                                        listViewDepartmentsRowList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewDepartmentsRow =
                                          listViewDepartmentsRowList[
                                              listViewIndex];
                                      return Container(
                                        width: double.infinity,
                                        color: Color(0x00000000),
                                        child: ExpandableNotifier(
                                          initialExpanded: true,
                                          child: ExpandablePanel(
                                            header: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Theme(
                                                    data: ThemeData(
                                                      checkboxTheme:
                                                          CheckboxThemeData(
                                                        visualDensity:
                                                            VisualDensity
                                                                .compact,
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                      ),
                                                      unselectedWidgetColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Checkbox(
                                                      value: _model
                                                              .checkboxValueMap6[
                                                          listViewDepartmentsRow] ??= false,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                    .checkboxValueMap6[
                                                                listViewDepartmentsRow] =
                                                            newValue!);
                                                        if (newValue!) {
                                                          logFirebaseEvent(
                                                              'COMPONENT_ADD_USER_WORKFLOW_Checkbox_gya');
                                                          FFAppState()
                                                              .addToDepartmentId(
                                                                  listViewDepartmentsRow
                                                                      .id
                                                                      .toString());
                                                          safeSetState(() {});
                                                        } else {
                                                          logFirebaseEvent(
                                                              'COMPONENT_ADD_USER_WORKFLOW_Checkbox_gya');
                                                          FFAppState()
                                                              .removeAtIndexFromDepartmentId(
                                                                  listViewIndex);
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      side: BorderSide(
                                                        width: 2,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      checkColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewDepartmentsRow
                                                          .nameEng,
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 5.0)),
                                              ),
                                            ),
                                            collapsed: Container(
                                              decoration: BoxDecoration(),
                                            ),
                                            expanded: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      30.0, 0.0, 0.0, 0.0),
                                              child: FutureBuilder<
                                                  List<DepartmentsRow>>(
                                                future: DepartmentsTable()
                                                    .querySingleRow(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'parentId',
                                                    listViewDepartmentsRow.id,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
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
                                                  List<DepartmentsRow>
                                                      listUserDepartmentsRowList =
                                                      snapshot.data!;

                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final listUserDepartmentsRow =
                                                      listUserDepartmentsRowList
                                                              .isNotEmpty
                                                          ? listUserDepartmentsRowList
                                                              .first
                                                          : null;

                                                  return ListView(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    children: [
                                                      FutureBuilder<
                                                          List<UsersRow>>(
                                                        future: UsersTable()
                                                            .queryRows(
                                                          queryFn: (q) =>
                                                              q.eqOrNull(
                                                            'organisationID',
                                                            listViewDepartmentsRow
                                                                .id,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<UsersRow>
                                                              columnUsersRowList =
                                                              snapshot.data!;

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                columnUsersRowList
                                                                    .length,
                                                                (columnIndex) {
                                                              final columnUsersRow =
                                                                  columnUsersRowList[
                                                                      columnIndex];
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Theme(
                                                                    data:
                                                                        ThemeData(
                                                                      checkboxTheme:
                                                                          CheckboxThemeData(
                                                                        visualDensity:
                                                                            VisualDensity.compact,
                                                                        materialTapTargetSize:
                                                                            MaterialTapTargetSize.shrinkWrap,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                        ),
                                                                      ),
                                                                      unselectedWidgetColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                    ),
                                                                    child:
                                                                        Checkbox(
                                                                      value: _model
                                                                              .selectUserValueMap5[
                                                                          columnUsersRow] ??= _model.selectAll ==
                                                                              true
                                                                          ? true
                                                                          : false,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        safeSetState(() =>
                                                                            _model.selectUserValueMap5[columnUsersRow] =
                                                                                newValue!);
                                                                        if (newValue!) {
                                                                          logFirebaseEvent(
                                                                              'COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                          FFAppState()
                                                                              .addToUserIds(columnUsersRow.id);
                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                          FFAppState()
                                                                              .removeAtIndexFromUserIds(columnIndex);
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      side:
                                                                          BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      checkColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          columnUsersRow
                                                                              .profileUrl,
                                                                          'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                        ),
                                                                        width:
                                                                            32.0,
                                                                        height:
                                                                            32.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              columnUsersRow.username,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        5.0)),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        color:
                                                            Color(0x00000000),
                                                        child:
                                                            ExpandableNotifier(
                                                          initialExpanded: true,
                                                          child:
                                                              ExpandablePanel(
                                                            header: FutureBuilder<
                                                                List<
                                                                    DepartmentsRow>>(
                                                              future: DepartmentsTable()
                                                                  .querySingleRow(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'parentId',
                                                                  listViewDepartmentsRow
                                                                      .id,
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
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<DepartmentsRow>
                                                                    columnDepartmentsRowList =
                                                                    snapshot
                                                                        .data!;

                                                                // Return an empty Container when the item does not exist.
                                                                if (snapshot
                                                                    .data!
                                                                    .isEmpty) {
                                                                  return Container();
                                                                }
                                                                final columnDepartmentsRow =
                                                                    columnDepartmentsRowList
                                                                            .isNotEmpty
                                                                        ? columnDepartmentsRowList
                                                                            .first
                                                                        : null;

                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Theme(
                                                                            data:
                                                                                ThemeData(
                                                                              checkboxTheme: CheckboxThemeData(
                                                                                visualDensity: VisualDensity.compact,
                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                ),
                                                                              ),
                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            child:
                                                                                Checkbox(
                                                                              value: _model.checkboxValueMap7[listViewDepartmentsRow] ??= false,
                                                                              onChanged: (newValue) async {
                                                                                safeSetState(() => _model.checkboxValueMap7[listViewDepartmentsRow] = newValue!);
                                                                                if (newValue!) {
                                                                                  logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_cdf');
                                                                                  FFAppState().addToDepartmentId(listUserDepartmentsRow!.id.toString());
                                                                                  safeSetState(() {});
                                                                                } else {
                                                                                  logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_cdf');
                                                                                  FFAppState().removeAtIndexFromDepartmentId(listViewIndex);
                                                                                  safeSetState(() {});
                                                                                }
                                                                              },
                                                                              side: BorderSide(
                                                                                width: 2,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              checkColor: FlutterFlowTheme.of(context).info,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              columnDepartmentsRow?.nameEng,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                            collapsed:
                                                                Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                            ),
                                                            expanded: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: FutureBuilder<
                                                                  List<
                                                                      DepartmentsRow>>(
                                                                future: DepartmentsTable()
                                                                    .querySingleRow(
                                                                  queryFn: (q) =>
                                                                      q.eqOrNull(
                                                                    'parentId',
                                                                    listUserDepartmentsRow
                                                                        ?.id,
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
                                                                  List<DepartmentsRow>
                                                                      listUserDepartmentsRowList =
                                                                      snapshot
                                                                          .data!;

                                                                  // Return an empty Container when the item does not exist.
                                                                  if (snapshot
                                                                      .data!
                                                                      .isEmpty) {
                                                                    return Container();
                                                                  }
                                                                  final listUserDepartmentsRow = listUserDepartmentsRowList
                                                                          .isNotEmpty
                                                                      ? listUserDepartmentsRowList
                                                                          .first
                                                                      : null;

                                                                  return ListView(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    primary:
                                                                        false,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    children: [
                                                                      FutureBuilder<
                                                                          List<
                                                                              UsersRow>>(
                                                                        future:
                                                                            UsersTable().queryRows(
                                                                          queryFn: (q) =>
                                                                              q.eqOrNull(
                                                                            'organisationID',
                                                                            listUserDepartmentsRow?.parentId,
                                                                          ),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          List<UsersRow>
                                                                              columnUsersRowList =
                                                                              snapshot.data!;

                                                                          return Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                List.generate(columnUsersRowList.length, (columnIndex) {
                                                                              final columnUsersRow = columnUsersRowList[columnIndex];
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                      value: _model.selectUserValueMap6[columnUsersRow] ??= _model.selectAll == true ? true : false,
                                                                                      onChanged: (newValue) async {
                                                                                        safeSetState(() => _model.selectUserValueMap6[columnUsersRow] = newValue!);
                                                                                        if (newValue!) {
                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                          FFAppState().addToUserIds(columnUsersRow.id);
                                                                                          safeSetState(() {});
                                                                                        } else {
                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                          FFAppState().removeAtIndexFromUserIds(columnIndex);
                                                                                          safeSetState(() {});
                                                                                        }
                                                                                      },
                                                                                      side: BorderSide(
                                                                                        width: 2,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      activeColor: FlutterFlowTheme.of(context).primary,
                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                      child: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          columnUsersRow.profileUrl,
                                                                                          'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                        ),
                                                                                        width: 32.0,
                                                                                        height: 32.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              columnUsersRow.username,
                                                                                              '-',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 5.0)),
                                                                              );
                                                                            }),
                                                                          );
                                                                        },
                                                                      ),
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        color: Color(
                                                                            0x00000000),
                                                                        child:
                                                                            ExpandableNotifier(
                                                                          initialExpanded:
                                                                              true,
                                                                          child:
                                                                              ExpandablePanel(
                                                                            header:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                      value: _model.checkboxValueMap8[listViewDepartmentsRow] ??= false,
                                                                                      onChanged: (newValue) async {
                                                                                        safeSetState(() => _model.checkboxValueMap8[listViewDepartmentsRow] = newValue!);
                                                                                        if (newValue!) {
                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_7ke');
                                                                                          FFAppState().addToDepartmentId(listUserDepartmentsRow!.id.toString());
                                                                                          safeSetState(() {});
                                                                                        } else {
                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_7ke');
                                                                                          FFAppState().removeAtIndexFromDepartmentId(listViewIndex);
                                                                                          safeSetState(() {});
                                                                                        }
                                                                                      },
                                                                                      side: BorderSide(
                                                                                        width: 2,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      activeColor: FlutterFlowTheme.of(context).primary,
                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      listUserDepartmentsRow?.nameEng,
                                                                                      '-',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 5.0)),
                                                                              ),
                                                                            ),
                                                                            collapsed:
                                                                                Container(
                                                                              decoration: BoxDecoration(),
                                                                            ),
                                                                            expanded:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                                                                              child: FutureBuilder<List<DepartmentsRow>>(
                                                                                future: DepartmentsTable().querySingleRow(
                                                                                  queryFn: (q) => q.eqOrNull(
                                                                                    'parentId',
                                                                                    listUserDepartmentsRow?.id,
                                                                                  ),
                                                                                ),
                                                                                builder: (context, snapshot) {
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
                                                                                  List<DepartmentsRow> listUserDepartmentsRowList = snapshot.data!;

                                                                                  // Return an empty Container when the item does not exist.
                                                                                  if (snapshot.data!.isEmpty) {
                                                                                    return Container();
                                                                                  }
                                                                                  final listUserDepartmentsRow = listUserDepartmentsRowList.isNotEmpty ? listUserDepartmentsRowList.first : null;

                                                                                  return ListView(
                                                                                    padding: EdgeInsets.zero,
                                                                                    primary: false,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    children: [
                                                                                      FutureBuilder<List<UsersRow>>(
                                                                                        future: UsersTable().queryRows(
                                                                                          queryFn: (q) => q.eqOrNull(
                                                                                            'organisationID',
                                                                                            listUserDepartmentsRow?.parentId,
                                                                                          ),
                                                                                        ),
                                                                                        builder: (context, snapshot) {
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
                                                                                          List<UsersRow> columnUsersRowList = snapshot.data!;

                                                                                          return Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: List.generate(columnUsersRowList.length, (columnIndex) {
                                                                                              final columnUsersRow = columnUsersRowList[columnIndex];
                                                                                              return Row(
                                                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                                      value: _model.selectUserValueMap7[columnUsersRow] ??= _model.selectAll == true ? true : false,
                                                                                                      onChanged: (newValue) async {
                                                                                                        safeSetState(() => _model.selectUserValueMap7[columnUsersRow] = newValue!);
                                                                                                        if (newValue!) {
                                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                          FFAppState().addToUserIds(columnUsersRow.id);
                                                                                                          safeSetState(() {});
                                                                                                        } else {
                                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                          FFAppState().removeAtIndexFromUserIds(columnIndex);
                                                                                                          safeSetState(() {});
                                                                                                        }
                                                                                                      },
                                                                                                      side: BorderSide(
                                                                                                        width: 2,
                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                      ),
                                                                                                      activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                      child: Image.network(
                                                                                                        valueOrDefault<String>(
                                                                                                          columnUsersRow.profileUrl,
                                                                                                          'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                        ),
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Flexible(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            valueOrDefault<String>(
                                                                                                              columnUsersRow.username,
                                                                                                              '-',
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(width: 5.0)),
                                                                                              );
                                                                                            }),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                      Container(
                                                                                        width: double.infinity,
                                                                                        color: Color(0x00000000),
                                                                                        child: ExpandableNotifier(
                                                                                          initialExpanded: true,
                                                                                          child: ExpandablePanel(
                                                                                            header: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                                      value: _model.checkboxValueMap9[listViewDepartmentsRow] ??= false,
                                                                                                      onChanged: (newValue) async {
                                                                                                        safeSetState(() => _model.checkboxValueMap9[listViewDepartmentsRow] = newValue!);
                                                                                                        if (newValue!) {
                                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_c8k');
                                                                                                          FFAppState().addToDepartmentId(listUserDepartmentsRow!.id.toString());
                                                                                                          safeSetState(() {});
                                                                                                        } else {
                                                                                                          logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_Checkbox_c8k');
                                                                                                          FFAppState().removeAtIndexFromDepartmentId(listViewIndex);
                                                                                                          safeSetState(() {});
                                                                                                        }
                                                                                                      },
                                                                                                      side: BorderSide(
                                                                                                        width: 2,
                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                      ),
                                                                                                      activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listUserDepartmentsRow?.nameEng,
                                                                                                      '-',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(width: 5.0)),
                                                                                              ),
                                                                                            ),
                                                                                            collapsed: Container(
                                                                                              decoration: BoxDecoration(),
                                                                                            ),
                                                                                            expanded: ListView(
                                                                                              padding: EdgeInsets.zero,
                                                                                              shrinkWrap: true,
                                                                                              scrollDirection: Axis.vertical,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                                                                                                  child: FutureBuilder<List<UsersRow>>(
                                                                                                    future: UsersTable().queryRows(
                                                                                                      queryFn: (q) => q.eqOrNull(
                                                                                                        'organisationID',
                                                                                                        listUserDepartmentsRow?.id,
                                                                                                      ),
                                                                                                    ),
                                                                                                    builder: (context, snapshot) {
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
                                                                                                      List<UsersRow> columnUsersRowList = snapshot.data!;

                                                                                                      return Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: List.generate(columnUsersRowList.length, (columnIndex) {
                                                                                                          final columnUsersRow = columnUsersRowList[columnIndex];
                                                                                                          return Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
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
                                                                                                                  value: _model.selectUserValueMap8[columnUsersRow] ??= _model.selectAll == true ? true : false,
                                                                                                                  onChanged: (newValue) async {
                                                                                                                    safeSetState(() => _model.selectUserValueMap8[columnUsersRow] = newValue!);
                                                                                                                    if (newValue!) {
                                                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                                      FFAppState().addToUserIds(columnUsersRow.id);
                                                                                                                      safeSetState(() {});
                                                                                                                    } else {
                                                                                                                      logFirebaseEvent('COMPONENT_ADD_USER_WORKFLOW_selectUser_O');
                                                                                                                      FFAppState().removeAtIndexFromUserIds(columnIndex);
                                                                                                                      safeSetState(() {});
                                                                                                                    }
                                                                                                                  },
                                                                                                                  side: BorderSide(
                                                                                                                    width: 2,
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                  activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                                  checkColor: FlutterFlowTheme.of(context).info,
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                child: ClipRRect(
                                                                                                                  borderRadius: BorderRadius.circular(40.0),
                                                                                                                  child: Image.network(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      columnUsersRow.profileUrl,
                                                                                                                      'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                                                                                                    ),
                                                                                                                    width: 32.0,
                                                                                                                    height: 32.0,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Flexible(
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          columnUsersRow.username,
                                                                                                                          '-',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ].divide(SizedBox(width: 5.0)),
                                                                                                          );
                                                                                                        }),
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            theme: ExpandableThemeData(
                                                                                              tapHeaderToExpand: true,
                                                                                              tapBodyToExpand: true,
                                                                                              tapBodyToCollapse: true,
                                                                                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                              hasIcon: true,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                            theme:
                                                                                ExpandableThemeData(
                                                                              tapHeaderToExpand: true,
                                                                              tapBodyToExpand: true,
                                                                              tapBodyToCollapse: true,
                                                                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                              hasIcon: true,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            theme:
                                                                ExpandableThemeData(
                                                              tapHeaderToExpand:
                                                                  true,
                                                              tapBodyToExpand:
                                                                  true,
                                                              tapBodyToCollapse:
                                                                  true,
                                                              headerAlignment:
                                                                  ExpandablePanelHeaderAlignment
                                                                      .center,
                                                              hasIcon: true,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENT_ADD_USER_WORKFLOW_CANCEL_BTN_O');
                        Navigator.pop(context);
                        FFAppState().serverity = [];
                        safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'iuitlom0' /* Cancel */,
                      ),
                      options: FFButtonOptions(
                        width: 90.0,
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).lineColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                        elevation: 1.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENT_ADD_USER_WORKFLOW_SAVE_BTN_ON_');
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        if (_model.dropDownValue1 == null) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Missing choose the serverity'),
                                    content: Text(
                                        'Please choose the serverity is required!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('No'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Yes'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          return;
                        }
                        if (_model.dropDownValue2 == null) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Missing choose department'),
                                    content: Text(
                                        'Please choose the department is required!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('No'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Yes'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          return;
                        }
                        Navigator.pop(context);
                        FFAppState()
                            .addToUserOrganizations(<String, List<String>?>{
                          'userId': FFAppState().userIds,
                          'serverity': FFAppState().serverity,
                          'departments': FFAppState().departmentId,
                        });
                        safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        '02ynxjxh' /* Save */,
                      ),
                      options: FFButtonOptions(
                        width: 90.0,
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 1.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ].divide(SizedBox(width: 5.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
