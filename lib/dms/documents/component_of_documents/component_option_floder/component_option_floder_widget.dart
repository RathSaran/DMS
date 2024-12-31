import '/backend/supabase/supabase.dart';
import '/dms/documents/component_of_documents/component_activity_folder/component_activity_folder_widget.dart';
import '/dms/documents/component_of_documents/component_delete_folder/component_delete_folder_widget.dart';
import '/dms/documents/component_of_documents/component_option_organize/component_option_organize_widget.dart';
import '/dms/documents/component_of_documents/component_rename_folder/component_rename_folder_widget.dart';
import '/dms/documents/component_of_documents/component_share/component_share_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_option_floder_model.dart';
export 'component_option_floder_model.dart';

class ComponentOptionFloderWidget extends StatefulWidget {
  const ComponentOptionFloderWidget({
    super.key,
    required this.folderId,
    String? folderName,
  }) : this.folderName = folderName ?? 'untitleFolder';

  final int? folderId;
  final String folderName;

  @override
  State<ComponentOptionFloderWidget> createState() =>
      _ComponentOptionFloderWidgetState();
}

class _ComponentOptionFloderWidgetState
    extends State<ComponentOptionFloderWidget> {
  late ComponentOptionFloderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentOptionFloderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Color(0x7F6F61EF),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: _model.mouseRegionHovered1!
                          ? Color(0x93E0E3E7)
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FaIcon(
                                FontAwesomeIcons.folderOpen,
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
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'tgzkd31r' /* Open */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
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
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered1 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered1 = false);
                  }),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Flexible(
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_OPTION_FLODER_Container_wj59js');
                          Navigator.pop(context);
                          await showDialog(
                            barrierColor: Color(0x52DBE2E7),
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height: 500.0,
                                  width: 500.0,
                                  child: ComponentRenameFolderWidget(),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: _model.mouseRegionHovered2!
                                ? Color(0x93E0E3E7)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
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
                                      Icons.drive_file_rename_outline_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'y4evvtuo' /* Rename */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
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
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered2 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered2 = false);
                    }),
                  ),
                ),
                Flexible(
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered3!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'COMPONENT_OPTION_FLODER_Row_p26snyrz_ON_');
                              showAlignedDialog(
                                barrierColor: Color(0x52DBE2E7),
                                context: context,
                                isGlobal: false,
                                avoidOverflow: false,
                                targetAnchor: AlignmentDirectional(1.0, 1.0)
                                    .resolve(Directionality.of(context)),
                                followerAnchor: AlignmentDirectional(-1.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                builder: (dialogContext) {
                                  return Material(
                                    color: Colors.transparent,
                                    child: Container(
                                      height: 280.0,
                                      width: 280.0,
                                      child: ComponentOptionOrganizeWidget(),
                                    ),
                                  );
                                },
                              );
                            },
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
                                      Icons.folder_copy,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'qqesbamq' /* Organize */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
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
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered3 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered3 = false);
                    }),
                  ),
                ),
                Flexible(
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered4!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'COMPONENT_OPTION_FLODER_Row_qgsh5di3_ON_');
                              Navigator.pop(context);
                              await showDialog(
                                barrierColor: Color(0x52DBE2E7),
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: Container(
                                      height: 500.0,
                                      width: 500.0,
                                      child: ComponentDeleteFolderWidget(),
                                    ),
                                  );
                                },
                              );

                              _model.delete = await FolderTable().delete(
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget!.folderId,
                                ),
                                returnRows: true,
                              );

                              safeSetState(() {});
                            },
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
                                      Icons.delete_forever_rounded,
                                      color: FlutterFlowTheme.of(context).error,
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
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '8y9cfg3j' /* Delete */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
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
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered4 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered4 = false);
                    }),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Flexible(
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered5!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'COMPONENT_OPTION_FLODER_Row_n70q3i4u_ON_');
                              Navigator.pop(context);
                              showDialog(
                                barrierColor: Color(0x52DBE2E7),
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: ComponentShareWidget(),
                                  );
                                },
                              );
                            },
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
                                      Icons.share_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '5hvfuc52' /* Share */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
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
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered5 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered5 = false);
                    }),
                  ),
                ),
                Flexible(
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered6!
                            ? Color(0x93E0E3E7)
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'COMPONENT_OPTION_FLODER_Row_qlo7cent_ON_');
                              Navigator.pop(context);
                              showDialog(
                                barrierColor: Color(0x52DBE2E7),
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(1.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: Container(
                                      height: double.infinity,
                                      width: 400.0,
                                      child: ComponentActivityFolderWidget(),
                                    ),
                                  );
                                },
                              );
                            },
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
                                      Icons.info_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '395zgpt8' /* Folder Information */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
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
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered6 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered6 = false);
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
