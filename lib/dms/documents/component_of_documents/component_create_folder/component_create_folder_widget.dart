import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_create_folder_model.dart';
export 'component_create_folder_model.dart';

class ComponentCreateFolderWidget extends StatefulWidget {
  const ComponentCreateFolderWidget({
    super.key,
    String? folderName,
  }) : this.folderName = folderName ?? 'Untitled folder';

  final String folderName;

  @override
  State<ComponentCreateFolderWidget> createState() =>
      _ComponentCreateFolderWidgetState();
}

class _ComponentCreateFolderWidgetState
    extends State<ComponentCreateFolderWidget> {
  late ComponentCreateFolderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCreateFolderModel());

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget!.folderName,
      'Untitled folder',
    ));
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.0,
      height: 340.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        '0kvy6bb3' /* Create Folder */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        '0lqfzxm4' /*   * */,
                      ),
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).error,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Outfit',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Outfit',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '171u8qtf' /* Color Folder */,
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Container(
                  height: 134.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_eqp5ghg3_O');
                          if (_model.color1) {
                            _model.color1 = false;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color1 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFAED6F1),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color1 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_tqe3qy85_O');
                          if (_model.color2) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = false;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color2 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFABEBC6),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color2 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_r1zf3nwi_O');
                          if (_model.color3) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = false;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color3 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFAD7A0),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color3 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_6sbu4dqd_O');
                          if (_model.color4) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = false;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color4 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5B7B1),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color4 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_uqzqc24c_O');
                          if (_model.color5) {
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = false;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color5 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF5DADE2),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color5 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_ybzdrbxp_O');
                          if (_model.color6) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = false;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color6 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF58D68D),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color6 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                            if (_model.color6 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_dtlbotjx_O');
                          if (_model.color7) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = false;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color7 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5B041),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color7 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_ggbzeqx5_O');
                          if (_model.color8) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = false;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color8 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFEC7063),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color8 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_cu8hq46b_O');
                          if (_model.color9) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = false;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color9 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF2E86C1),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color9 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_nwcqm76s_O');
                          if (_model.color10) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = false;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color10 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF28B463),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color10 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_rhccz8na_O');
                          if (_model.color11) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = false;
                            safeSetState(() {});
                            _model.color12 = true;
                            safeSetState(() {});
                          } else {
                            _model.color11 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFD68910),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color11 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_CREATE_FOLDER_Stack_fgrvpksz_O');
                          if (_model.color12) {
                            _model.color1 = true;
                            safeSetState(() {});
                            _model.color2 = true;
                            safeSetState(() {});
                            _model.color3 = true;
                            safeSetState(() {});
                            _model.color4 = true;
                            safeSetState(() {});
                            _model.color5 = true;
                            safeSetState(() {});
                            _model.color6 = true;
                            safeSetState(() {});
                            _model.color7 = true;
                            safeSetState(() {});
                            _model.color8 = true;
                            safeSetState(() {});
                            _model.color9 = true;
                            safeSetState(() {});
                            _model.color10 = true;
                            safeSetState(() {});
                            _model.color11 = true;
                            safeSetState(() {});
                            _model.color12 = false;
                            safeSetState(() {});
                          } else {
                            _model.color12 = true;
                            safeSetState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCB4335),
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            if (_model.color12 == false)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'COMPONENT_CREATE_FOLDER_CANCEL_BTN_ON_TA');
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'ey9qznah' /* Cancel */,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).lineColor,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                        'COMPONENT_CREATE_FOLDER_CREATE_BTN_ON_TA');
                    await FolderTable().insert({
                      'created_at':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'name': _model.textController.text,
                      'size': 0.0,
                      'last_modify':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'active': true,
                      'user_id': currentUserUid,
                      'favorite_folder': false,
                      'trash': false,
                      'share_with': false,
                      'type': 'folder',
                      'updated_date':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'validate_date':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'unit': 'B',
                      'parent_path': 'documents/',
                      'color_code': () {
                        if (_model.color1 == false) {
                          return '#aed6f1';
                        } else if (_model.color2 == false) {
                          return '#abebc6';
                        } else if (_model.color3 == false) {
                          return '#fad7a0';
                        } else if (_model.color4 == false) {
                          return '#f5b7b1';
                        } else if (_model.color5 == false) {
                          return '#5dade2';
                        } else if (_model.color6 == false) {
                          return '#58d68d';
                        } else if (_model.color7 == false) {
                          return '#f5b041';
                        } else if (_model.color8 == false) {
                          return '#ec7063';
                        } else if (_model.color9 == false) {
                          return '#2e86c1';
                        } else if (_model.color10 == false) {
                          return '#28b463';
                        } else if (_model.color11 == false) {
                          return '#d68910';
                        } else if (_model.color12 == false) {
                          return '#cb4335';
                        } else {
                          return '#6F61EF';
                        }
                      }(),
                      'id': random_data.randomInteger(0, 100000),
                    });
                    Navigator.pop(context);
                    _model.queryForRebuildUI = await FolderTable().queryRows(
                      queryFn: (q) => q,
                    );

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'kx95j45t' /* Create */,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
              ].divide(SizedBox(width: 10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
