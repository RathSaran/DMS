import '/dms/documents/component_of_documents/component_option_documents/component_option_documents_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_card_view_file_model.dart';
export 'component_card_view_file_model.dart';

class ComponentCardViewFileWidget extends StatefulWidget {
  const ComponentCardViewFileWidget({
    super.key,
    required this.fileName,
    required this.fileUrl,
    required this.folderId,
  });

  final String? fileName;
  final String? fileUrl;
  final int? folderId;

  @override
  State<ComponentCardViewFileWidget> createState() =>
      _ComponentCardViewFileWidgetState();
}

class _ComponentCardViewFileWidgetState
    extends State<ComponentCardViewFileWidget> {
  late ComponentCardViewFileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCardViewFileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        width: 260.0,
        height: 275.0,
        decoration: BoxDecoration(
          color: _model.mouseRegionHovered!
              ? Color(0x93E0E3E7)
              : FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                      child: Container(
                        width: 240.0,
                        height: 225.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: FlutterFlowPdfViewer(
                          networkPath: valueOrDefault<String>(
                            widget!.fileUrl,
                            'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/folder/1728389806864000.pdf',
                          ),
                          height: 300.0,
                          horizontalScroll: true,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                      child: Container(
                        width: 240.0,
                        height: 225.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'COMPONENT_CARD_VIEW_FILE_Icon_stjbyzp8_O');
                            showAlignedDialog(
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
                                    width: 300.0,
                                    child: ComponentOptionDocumentsWidget(
                                      folderId: widget!.folderId!,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 26.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: AutoSizeText(
                  valueOrDefault<String>(
                    widget!.fileName,
                    '-',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
