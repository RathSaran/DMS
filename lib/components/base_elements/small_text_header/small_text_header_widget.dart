import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'small_text_header_model.dart';
export 'small_text_header_model.dart';

class SmallTextHeaderWidget extends StatefulWidget {
  const SmallTextHeaderWidget({
    super.key,
    this.title,
    this.color,
    this.maxLine,
    this.size,
  });

  final String? title;
  final Color? color;
  final int? maxLine;
  final double? size;

  @override
  State<SmallTextHeaderWidget> createState() => _SmallTextHeaderWidgetState();
}

class _SmallTextHeaderWidgetState extends State<SmallTextHeaderWidget> {
  late SmallTextHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmallTextHeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget!.title,
        'text',
      ),
      maxLines: widget!.maxLine,
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Plus Jakarta Sans',
            color: valueOrDefault<Color>(
              widget!.color,
              FlutterFlowTheme.of(context).primaryText,
            ),
            fontSize: widget!.size,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
