import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_property_sign_date_model.dart';
export 'component_property_sign_date_model.dart';

class ComponentPropertySignDateWidget extends StatefulWidget {
  const ComponentPropertySignDateWidget({
    super.key,
    bool? isDelete,
  }) : this.isDelete = isDelete ?? true;

  final bool isDelete;

  @override
  State<ComponentPropertySignDateWidget> createState() =>
      _ComponentPropertySignDateWidgetState();
}

class _ComponentPropertySignDateWidgetState
    extends State<ComponentPropertySignDateWidget> {
  late ComponentPropertySignDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentPropertySignDateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 270.0,
          maxHeight: 900.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.smallTextHeaderModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SmallTextHeaderWidget(
                        title: 'Sign Date',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).error,
                      borderRadius: 10.0,
                      borderWidth: 1.0,
                      buttonSize: 46.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor: FlutterFlowTheme.of(context).lineColor,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        Icons.delete_outlined,
                        color: FlutterFlowTheme.of(context).error,
                        size: 26.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENT_PROPERTY_SIGN_DATE_delete_outl');
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: FlutterFlowTheme.of(context).accent4,
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.myTextFieldModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: MyTextFieldWidget(
                          xLabel: FFLocalizations.of(context).getText(
                            'lkzae324' /* Field Name */,
                          ),
                          isRequired: ' ',
                          initialValue: FFLocalizations.of(context).getText(
                            'ahcmmiy0' /* Field Date */,
                          ),
                          viewOnly: false,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.myTextFieldModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: MyTextFieldWidget(
                          xLabel: FFLocalizations.of(context).getText(
                            '9uejcpf9' /* Label */,
                          ),
                          isRequired: '*',
                          initialValue: FFLocalizations.of(context).getText(
                            'rt3jaa4y' /* Date */,
                          ),
                          viewOnly: false,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 5.0)).around(SizedBox(height: 5.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
