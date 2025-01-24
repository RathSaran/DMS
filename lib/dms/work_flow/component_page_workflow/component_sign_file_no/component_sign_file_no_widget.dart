import '/dms/work_flow/component_page_workflow/component_sign_upload_doc_action/component_sign_upload_doc_action_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_file_no_model.dart';
export 'component_sign_file_no_model.dart';

class ComponentSignFileNoWidget extends StatefulWidget {
  /// Use: ComponentUploadDocument
  const ComponentSignFileNoWidget({super.key});

  @override
  State<ComponentSignFileNoWidget> createState() =>
      _ComponentSignFileNoWidgetState();
}

class _ComponentSignFileNoWidgetState extends State<ComponentSignFileNoWidget> {
  late ComponentSignFileNoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignFileNoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Builder(
        builder: (context) => InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('COMPONENT_SIGN_FILE_NO_Container_gqysjng');
            await showAlignedDialog(
              barrierColor: Colors.transparent,
              context: context,
              isGlobal: false,
              avoidOverflow: false,
              targetAnchor: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              followerAnchor: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              builder: (dialogContext) {
                return Material(
                  color: Colors.transparent,
                  child: Container(
                    width: 210.0,
                    child: ComponentSignUploadDocActionWidget(),
                  ),
                );
              },
            );
          },
          child: SafeArea(
            child: Container(
              width: 260.0,
              height: 350.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.file_present_outlined,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 60.0,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'ekrp2yub' /* Drop or Select your file */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ]
                            .divide(SizedBox(height: 20.0))
                            .addToStart(SizedBox(height: 50.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: 210.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                    ),
                    alignment: AlignmentDirectional(-1.0, 0.0),
                  ),
                ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
