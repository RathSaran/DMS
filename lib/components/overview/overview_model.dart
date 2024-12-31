import '/components/h_g_features/h_g_features_widget.dart';
import '/components/h_g_wehave/h_g_wehave_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'overview_widget.dart' show OverviewWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OverviewModel extends FlutterFlowModel<OverviewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for HGFeatures component.
  late HGFeaturesModel hGFeaturesModel;
  // Model for HGWehave component.
  late HGWehaveModel hGWehaveModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    hGFeaturesModel = createModel(context, () => HGFeaturesModel());
    hGWehaveModel = createModel(context, () => HGWehaveModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    hGFeaturesModel.dispose();
    hGWehaveModel.dispose();
  }
}
