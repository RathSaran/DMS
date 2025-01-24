import '/auth/supabase_auth/auth_util.dart';
import '/components/cancel_dialog/cancel_dialog_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_new_account_model.dart';
export 'add_new_account_model.dart';

class AddNewAccountWidget extends StatefulWidget {
  const AddNewAccountWidget({super.key});

  @override
  State<AddNewAccountWidget> createState() => _AddNewAccountWidgetState();
}

class _AddNewAccountWidgetState extends State<AddNewAccountWidget> {
  late AddNewAccountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewAccountModel());

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
      width: 600.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'l2fewu0a' /* Add Account */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 28.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.emailModel,
                updateCallback: () => safeSetState(() {}),
                child: MyTextFieldWidget(
                  xLabel: FFLocalizations.of(context).getText(
                    'qn66qgxb' /* Email */,
                  ),
                  isRequired: FFLocalizations.of(context).getText(
                    '560epy4g' /*   * */,
                  ),
                  viewOnly: false,
                  maxLine: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.passwordModel,
                updateCallback: () => safeSetState(() {}),
                child: MyTextFieldWidget(
                  xLabel: FFLocalizations.of(context).getText(
                    '4d8ikj5k' /* Password */,
                  ),
                  isRequired: FFLocalizations.of(context).getText(
                    'vmjhp2tt' /*   * */,
                  ),
                  viewOnly: false,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 15.0, 0.0),
                  child: wrapWithModel(
                    model: _model.cancelDialogModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CancelDialogWidget(),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADD_NEW_ACCOUNT_COMP_SAVE_BTN_ON_TAP');
                        GoRouter.of(context).prepareAuthEvent();

                        final user = await authManager.signInWithEmail(
                          context,
                          _model.emailModel.textController.text,
                          _model.passwordModel.textController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        Navigator.pop(context);
                        FFAppState().switchUserAccount = <String, dynamic>{
                          'id': random_data.randomInteger(0, 100),
                          'email': _model.emailModel.textController.text,
                          'password': _model.passwordModel.textController.text,
                        }.toList().cast<dynamic>();
                        safeSetState(() {});

                        context.goNamedAuth('home_page', context.mounted);
                      },
                      text: FFLocalizations.of(context).getText(
                        'uybzg44x' /* Save */,
                      ),
                      options: FFButtonOptions(
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 0.0, 30.0, 0.0),
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
