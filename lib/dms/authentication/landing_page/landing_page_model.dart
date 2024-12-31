import '/dms/home/settings/componenets/oone_logo/oone_logo_widget.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for oone_logo component.
  late OoneLogoModel ooneLogoModel;

  @override
  void initState(BuildContext context) {
    ooneLogoModel = createModel(context, () => OoneLogoModel());
  }

  @override
  void dispose() {
    ooneLogoModel.dispose();
  }
}
