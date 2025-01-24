import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_company_detail_model.dart';
export 'component_company_detail_model.dart';

class ComponentCompanyDetailWidget extends StatefulWidget {
  const ComponentCompanyDetailWidget({super.key});

  @override
  State<ComponentCompanyDetailWidget> createState() =>
      _ComponentCompanyDetailWidgetState();
}

class _ComponentCompanyDetailWidgetState
    extends State<ComponentCompanyDetailWidget> {
  late ComponentCompanyDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCompanyDetailModel());

    _model.tfCompanyTextController ??= TextEditingController();
    _model.tfCompanyFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        TextFormField(
          controller: _model.tfCompanyTextController,
          focusNode: _model.tfCompanyFocusNode,
          onChanged: (_) => EasyDebounce.debounce(
            '_model.tfCompanyTextController',
            Duration(milliseconds: 100),
            () => safeSetState(() {}),
          ),
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                ),
            hintText: FFLocalizations.of(context).getText(
              'rxo7sfwl' /* Company name */,
            ),
            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Plus Jakarta Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
              ),
          cursorColor: FlutterFlowTheme.of(context).primaryText,
          validator:
              _model.tfCompanyTextControllerValidator.asValidator(context),
        ),
      ],
    );
  }
}
