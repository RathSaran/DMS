import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'folder_card_model.dart';
export 'folder_card_model.dart';

class FolderCardWidget extends StatefulWidget {
  const FolderCardWidget({super.key});

  @override
  State<FolderCardWidget> createState() => _FolderCardWidgetState();
}

class _FolderCardWidgetState extends State<FolderCardWidget> {
  late FolderCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FolderCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.folder,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 48.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'qfha7yxo' /* Folder Name */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'ygfkpzm2' /* 2.3 GB */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Container(
                  width: 4.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'jdzxvh3v' /* 100 files */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(width: 6.0)),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.star_border,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 28.0,
            ),
            Icon(
              Icons.more_vert,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 28.0,
            ),
          ],
        ),
      ],
    );
  }
}
