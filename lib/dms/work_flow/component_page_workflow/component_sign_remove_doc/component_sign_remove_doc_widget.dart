import '/backend/supabase/supabase.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_remove_doc_model.dart';
export 'component_sign_remove_doc_model.dart';

class ComponentSignRemoveDocWidget extends StatefulWidget {
  /// USE: ComponentUploadFile
  const ComponentSignRemoveDocWidget({
    super.key,
    this.docURL,
  });

  final String? docURL;

  @override
  State<ComponentSignRemoveDocWidget> createState() =>
      _ComponentSignRemoveDocWidgetState();
}

class _ComponentSignRemoveDocWidgetState
    extends State<ComponentSignRemoveDocWidget> {
  late ComponentSignRemoveDocModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignRemoveDocModel());

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 200.0,
            maxHeight: 120.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Color(0x7F6F61EF),
              width: 1.0,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('COMPONENT_SIGN_REMOVE_DOC_Container_ftnh');
                  final selectedFiles = await selectFiles(
                    storageFolderPath: 'folder',
                    allowedExtensions: ['pdf'],
                    multiFile: false,
                  );
                  if (selectedFiles != null) {
                    safeSetState(() => _model.isDataUploading = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    var downloadUrls = <String>[];
                    try {
                      selectedUploadedFiles = selectedFiles
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                              ))
                          .toList();

                      downloadUrls = await uploadSupabaseStorageFiles(
                        bucketName: 'dms_storage',
                        selectedFiles: selectedFiles,
                      );
                    } finally {
                      _model.isDataUploading = false;
                    }
                    if (selectedUploadedFiles.length == selectedFiles.length &&
                        downloadUrls.length == selectedFiles.length) {
                      safeSetState(() {
                        _model.uploadedLocalFile = selectedUploadedFiles.first;
                        _model.uploadedFileUrl = downloadUrls.first;
                      });
                    } else {
                      safeSetState(() {});
                      return;
                    }
                  }

                  await FolderTable().update(
                    data: {
                      'path_url': _model.uploadedFileUrl,
                    },
                    matchingRows: (rows) => rows.eqOrNull(
                      'path_url',
                      widget!.docURL,
                    ),
                  );

                  context.pushNamed(
                    'PageWorkflowProcess',
                    queryParameters: {
                      'isDocUpload': serializeParam(
                        true,
                        ParamType.bool,
                      ),
                      'docUploaded': serializeParam(
                        _model.uploadedFileUrl,
                        ParamType.String,
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
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.repeat,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.largeTextContentModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: LargeTextContentWidget(
                              title: 'Replace',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('COMPONENT_SIGN_REMOVE_DOC_Container_dpsq');

                  context.pushNamed(
                    'PageWorkflowProcess',
                    queryParameters: {
                      'isDocUpload': serializeParam(
                        false,
                        ParamType.bool,
                      ),
                      'docUploaded': serializeParam(
                        'url',
                        ParamType.String,
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
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.delete_forever,
                          color: FlutterFlowTheme.of(context).error,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.largeTextContentModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: LargeTextContentWidget(
                              title: 'Delete',
                              color: FlutterFlowTheme.of(context).error,
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
      ),
    );
  }
}
