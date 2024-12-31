import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancel_navigate_back_model.dart';
export 'cancel_navigate_back_model.dart';

class CancelNavigateBackWidget extends StatefulWidget {
  const CancelNavigateBackWidget({super.key});

  @override
  State<CancelNavigateBackWidget> createState() =>
      _CancelNavigateBackWidgetState();
}

class _CancelNavigateBackWidgetState extends State<CancelNavigateBackWidget> {
  late CancelNavigateBackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelNavigateBackModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        logFirebaseEvent('CANCEL_NAVIGATE_BACK_CANCEL_BTN_ON_TAP');
        context.safePop();
      },
      text: FFLocalizations.of(context).getText(
        'trj6xjuc' /* Cancel */,
      ),
      options: FFButtonOptions(
        height: 50.0,
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).lineColor,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Plus Jakarta Sans',
              color: FlutterFlowTheme.of(context).primaryText,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
            ),
        elevation: 1.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).alternate,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
