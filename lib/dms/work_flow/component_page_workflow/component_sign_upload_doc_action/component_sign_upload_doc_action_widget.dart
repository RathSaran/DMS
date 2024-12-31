import '/backend/supabase/supabase.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_upload_doc_action_model.dart';
export 'component_sign_upload_doc_action_model.dart';

class ComponentSignUploadDocActionWidget extends StatefulWidget {
  const ComponentSignUploadDocActionWidget({
    super.key,
    bool? isScanAble,
  }) : this.isScanAble = isScanAble ?? true;

  final bool isScanAble;

  @override
  State<ComponentSignUploadDocActionWidget> createState() =>
      _ComponentSignUploadDocActionWidgetState();
}

class _ComponentSignUploadDocActionWidgetState
    extends State<ComponentSignUploadDocActionWidget> {
  late ComponentSignUploadDocActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignUploadDocActionModel());

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
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 400.0,
            maxHeight: 390.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Color(0x7F6F61EF),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contLoc');
                      final selectedFiles = await selectFiles(
                        storageFolderPath: 'folder',
                        allowedExtensions: ['pdf'],
                        multiFile: true,
                      );
                      if (selectedFiles != null) {
                        safeSetState(() => _model.isDataUploading = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
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
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedFiles.length &&
                            downloadUrls.length == selectedFiles.length) {
                          safeSetState(() {
                            _model.uploadedLocalFiles = selectedUploadedFiles;
                            _model.uploadedFileUrls = downloadUrls;
                          });
                          showUploadMessage(
                            context,
                            'Success!',
                          );
                        } else {
                          safeSetState(() {});
                          showUploadMessage(
                            context,
                            'Failed to upload file',
                          );
                          return;
                        }
                      }

                      if (_model.uploadedFileUrls.isNotEmpty) {
                        context.pushNamed(
                          'PageWorkflowProcess',
                          queryParameters: {
                            'docUploaded': serializeParam(
                              _model.uploadedFileUrls.firstOrNull,
                              ParamType.String,
                            ),
                            'isDocUpload': serializeParam(
                              true,
                              ParamType.bool,
                            ),
                            'docName': serializeParam(
                              '',
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
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Upload Fail',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).tertiary,
                          ),
                        );
                      }

                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered1!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.computer_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.largeTextContentModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LargeTextContentWidget(
                                        title:
                                            FFLocalizations.of(context).getText(
                                          'dc4b7194' /* Local File */,
                                        ),
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
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered1 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered1 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contDoc');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Comming Soon!',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered2!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.folder_open_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.largeTextContentModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LargeTextContentWidget(
                                        title:
                                            FFLocalizations.of(context).getText(
                                          'iz9ustap' /* Document */,
                                        ),
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
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered2 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered2 = false);
                  }),
                ),
                if (widget!.isScanAble)
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contSca');
                        if (isWeb) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Comming Soon!',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                            ),
                          );
                        }
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: _model.mouseRegionHovered3!
                              ? Color(0x93E0E3E7)
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.document_scanner_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      wrapWithModel(
                                        model: _model.largeTextContentModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: LargeTextContentWidget(
                                          title: FFLocalizations.of(context)
                                              .getText(
                                            'hy9j9y5q' /* Scan Document */,
                                          ),
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
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered3 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered3 = false);
                    }),
                  ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contGoo');
                      await launchURL('https://www.google.com/drive/');
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered4!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: FaIcon(
                                  FontAwesomeIcons.googleDrive,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.largeTextContentModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LargeTextContentWidget(
                                        title: 'Google Drive',
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
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered4 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered4 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contOne');
                      await launchURL('https://onedrive.live.com/login/');
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered5!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.cloud_download_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.largeTextContentModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LargeTextContentWidget(
                                        title: 'OneDrive',
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
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered5 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered5 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contDro');
                      await launchURL('https://www.dropbox.com/');
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered6!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: FaIcon(
                                  FontAwesomeIcons.dropbox,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.largeTextContentModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LargeTextContentWidget(
                                        title: 'DropBox',
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
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered6 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered6 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_UPLOAD_DOC_ACTION_contBox');
                      await launchURL('https://drive.oone.bz/#/signin');
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered7!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/logo_oone_2.png',
                                      width: 20.0,
                                      height: 20.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.largeTextContentModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LargeTextContentWidget(
                                        title: 'Oone',
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
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered7 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered7 = false);
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
