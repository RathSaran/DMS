import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'darkand_light3_model.dart';
export 'darkand_light3_model.dart';

class DarkandLight3Widget extends StatefulWidget {
  const DarkandLight3Widget({super.key});

  @override
  State<DarkandLight3Widget> createState() => _DarkandLight3WidgetState();
}

class _DarkandLight3WidgetState extends State<DarkandLight3Widget> {
  late DarkandLight3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkandLight3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15.0,
      runSpacing: 0.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 207.0,
          height: 159.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
              width: 3.0,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(1.0, 1.0),
            child: Container(
              width: 170.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'lzhcuxna' /* Light Mode */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 207.0,
          height: 159.0,
          decoration: BoxDecoration(
            color: Color(0xFF1B1D27),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(1.0, 1.0),
            child: Container(
              width: 170.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: Color(0xFF2A3137),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'kxepqoim' /* Dark Mode */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 207.0,
          height: 159.0,
          decoration: BoxDecoration(
            color: Color(0xFF1B1D27),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(1.0, 1.0),
            child: Container(
              width: 170.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'k5klm4ty' /* System Mode */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
