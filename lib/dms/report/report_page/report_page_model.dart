import '/components/common_elements/page_header/page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'report_page_widget.dart' show ReportPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReportPageModel extends FlutterFlowModel<ReportPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for PageHeader component.
  late PageHeaderModel pageHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for PaginationPanel component.
  late PaginationPanelModel paginationPanelModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    pageHeaderModel = createModel(context, () => PageHeaderModel());
    paginationPanelModel = createModel(context, () => PaginationPanelModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    pageHeaderModel.dispose();
    tabBarController?.dispose();
    paginationPanelModel.dispose();
  }
}
