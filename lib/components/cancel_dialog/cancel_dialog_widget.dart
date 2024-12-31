import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancel_dialog_model.dart';
export 'cancel_dialog_model.dart';

class CancelDialogWidget extends StatefulWidget {
  const CancelDialogWidget({super.key});

  @override
  State<CancelDialogWidget> createState() => _CancelDialogWidgetState();
}

class _CancelDialogWidgetState extends State<CancelDialogWidget> {
  late CancelDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelDialogModel());

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
        logFirebaseEvent('CANCEL_DIALOG_COMP_CANCEL_BTN_ON_TAP');
        Navigator.pop(context);
      },
      text: FFLocalizations.of(context).getText(
        'f73ykew0' /* Cancel */,
      ),
      options: FFButtonOptions(
        width: 100.0,
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
