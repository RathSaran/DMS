import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'close_dialog_model.dart';
export 'close_dialog_model.dart';

class CloseDialogWidget extends StatefulWidget {
  const CloseDialogWidget({super.key});

  @override
  State<CloseDialogWidget> createState() => _CloseDialogWidgetState();
}

class _CloseDialogWidgetState extends State<CloseDialogWidget> {
  late CloseDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CloseDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderRadius: 40.0,
      borderWidth: 2.0,
      buttonSize: 40.0,
      fillColor: FlutterFlowTheme.of(context).primaryBackground,
      icon: Icon(
        Icons.close_outlined,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 24.0,
      ),
      onPressed: () async {
        logFirebaseEvent('CLOSE_DIALOG_close_outlined_ICN_ON_TAP');
        Navigator.pop(context);
      },
    );
  }
}
