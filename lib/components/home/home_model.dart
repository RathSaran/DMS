import '/components/info/info_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_widget.dart' show HomeWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Info component.
  late InfoModel infoModel;

  @override
  void initState(BuildContext context) {
    infoModel = createModel(context, () => InfoModel());
  }

  @override
  void dispose() {
    infoModel.dispose();
  }
}
