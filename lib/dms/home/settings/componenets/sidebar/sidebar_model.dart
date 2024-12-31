import '/dms/home/settings/componenets/oone_logo/oone_logo_widget.dart';
import '/dms/home/settings/componenets/profile_dialog/profile_dialog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'sidebar_widget.dart' show SidebarWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SidebarModel extends FlutterFlowModel<SidebarWidget> {
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
