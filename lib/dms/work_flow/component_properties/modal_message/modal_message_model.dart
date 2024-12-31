import '/dms/home/settings/componenets/oone_logo/oone_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_message_widget.dart' show ModalMessageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalMessageModel extends FlutterFlowModel<ModalMessageWidget> {
  ///  State fields for stateful widgets in this component.

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
