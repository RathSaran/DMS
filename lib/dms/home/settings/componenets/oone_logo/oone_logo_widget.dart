import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oone_logo_model.dart';
export 'oone_logo_model.dart';

class OoneLogoWidget extends StatefulWidget {
  const OoneLogoWidget({super.key});

  @override
  State<OoneLogoWidget> createState() => _OoneLogoWidgetState();
}

class _OoneLogoWidgetState extends State<OoneLogoWidget> {
  late OoneLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OoneLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/images/Oone_Logo_White.png'
          : 'assets/images/Oone.png',
      width: 104.0,
      height: 44.0,
      fit: BoxFit.contain,
      alignment: Alignment(-1.0, 0.0),
    );
  }
}
