import '/components/component_pagination/component_pagination_widget.dart';
import '/dms/home/settings/componenets/search_dialog/search_dialog_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/report/components/component_card_view_report/component_card_view_report_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'page_reports_v318_widget.dart' show PageReportsV318Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageReportsV318Model extends FlutterFlowModel<PageReportsV318Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for ComponentCardViewReport component.
  late ComponentCardViewReportModel componentCardViewReportModel;
  // Model for ComponentPagination component.
  late ComponentPaginationModel componentPaginationModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    componentCardViewReportModel =
        createModel(context, () => ComponentCardViewReportModel());
    componentPaginationModel =
        createModel(context, () => ComponentPaginationModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    componentCardViewReportModel.dispose();
    componentPaginationModel.dispose();
  }
}
