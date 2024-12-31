import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'small_text_content_model.dart';
export 'small_text_content_model.dart';

class SmallTextContentWidget extends StatefulWidget {
  const SmallTextContentWidget({
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
  State<SmallTextContentWidget> createState() => _SmallTextContentWidgetState();
}

class _SmallTextContentWidgetState extends State<SmallTextContentWidget> {
  late SmallTextContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmallTextContentModel());

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
