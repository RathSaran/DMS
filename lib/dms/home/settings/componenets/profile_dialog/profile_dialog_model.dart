import '/auth/supabase_auth/auth_util.dart';
import '/components/base_elements/close_dialog/close_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'profile_dialog_widget.dart' show ProfileDialogWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileDialogModel extends FlutterFlowModel<ProfileDialogWidget> {
  ///  Local state fields for this component.

  bool accountSwitcher = true;

  ///  State fields for stateful widgets in this component.

  // Model for CloseDialog component.
  late CloseDialogModel closeDialogModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    closeDialogModel = createModel(context, () => CloseDialogModel());
  }

  @override
  void dispose() {
    closeDialogModel.dispose();
  }
}
