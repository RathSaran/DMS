import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_empty_data_model.dart';
export 'component_sign_empty_data_model.dart';

class ComponentSignEmptyDataWidget extends StatefulWidget {
  const ComponentSignEmptyDataWidget({super.key});

  @override
  State<ComponentSignEmptyDataWidget> createState() =>
      _ComponentSignEmptyDataWidgetState();
}

class _ComponentSignEmptyDataWidgetState
    extends State<ComponentSignEmptyDataWidget> {
  late ComponentSignEmptyDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignEmptyDataModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 400.0,
          height: 400.0,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://cdni.iconscout.com/illustration/premium/thumb/data-search-not-found-illustration-download-in-svg-png-gif-file-formats--404-pack-files-folders-illustrations-6109669.png?f=webp',
                  width: 250.0,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '2kekbd4k' /* You don't have any message! */,
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
