import '/components/component_pagination/component_pagination_widget.dart';
import '/dms/home/settings/componenets/search_dialog/search_dialog_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'page_reports_v1_widget.dart' show PageReportsV1Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageReportsV1Model extends FlutterFlowModel<PageReportsV1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for DropDownFilterActivity widget.
  String? dropDownFilterActivityValue;
  FormFieldController<String>? dropDownFilterActivityValueController;
  // State field(s) for DropDownFilterDate widget.
  String? dropDownFilterDateValue;
  FormFieldController<String>? dropDownFilterDateValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for ComponentPagination component.
  late ComponentPaginationModel componentPaginationModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    componentPaginationModel =
        createModel(context, () => ComponentPaginationModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    componentPaginationModel.dispose();
  }
}
