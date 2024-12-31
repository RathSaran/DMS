import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'setting_page_widget.dart' show SettingPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingPageModel extends FlutterFlowModel<SettingPageWidget> {
  ///  Local state fields for this page.

  bool? isAccount = true;

  bool? isUserAuth = true;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for PageHeader component.
  late PageHeaderModel pageHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for AccountView widget.
  bool accountViewHovered = false;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel1;
  // State field(s) for TeamView widget.
  bool teamViewHovered = false;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel2;
  // State field(s) for BusinessView widget.
  bool businessViewHovered = false;
  // State field(s) for VersionsControl widget.
  bool versionsControlHovered = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for ConfigurationView widget.
  bool configurationViewHovered = false;
  // State field(s) for CustomizatioView widget.
  bool customizatioViewHovered = false;
  // State field(s) for MobileAppView widget.
  bool mobileAppViewHovered = false;
  // State field(s) for ReportsView widget.
  bool reportsViewHovered = false;
  // State field(s) for AdministratorView widget.
  bool administratorViewHovered = false;
  // State field(s) for IntegrationView widget.
  bool integrationViewHovered = false;
  // State field(s) for MigrationView widget.
  bool migrationViewHovered = false;
  // State field(s) for AIView widget.
  bool aIViewHovered = false;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    pageHeaderModel = createModel(context, () => PageHeaderModel());
    smallTextHeaderModel1 = createModel(context, () => SmallTextHeaderModel());
    smallTextHeaderModel2 = createModel(context, () => SmallTextHeaderModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    pageHeaderModel.dispose();
    tabBarController?.dispose();
    smallTextHeaderModel1.dispose();
    smallTextHeaderModel2.dispose();
  }
}
