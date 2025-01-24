import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'large_text_content_model.dart';
export 'large_text_content_model.dart';

class LargeTextContentWidget extends StatefulWidget {
  const LargeTextContentWidget({
    super.key,
    this.title,
    this.color,
    this.size,
    this.maxLine,
  });

  final String? title;
  final Color? color;
  final double? size;
  final int? maxLine;

  @override
  State<LargeTextContentWidget> createState() => _LargeTextContentWidgetState();
}

class _LargeTextContentWidgetState extends State<LargeTextContentWidget> {
  late LargeTextContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LargeTextContentModel());

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
            color: widget!.color,
            fontSize: widget!.size,
            letterSpacing: 0.0,
          ),
    );
  }
}
