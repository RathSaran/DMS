import '/components/component_pagination/component_pagination_widget.dart';
import '/dms/documents/component_of_documents/component_acivity_documents/component_acivity_documents_widget.dart';
import '/dms/documents/component_of_documents/components_filter_hide_show_type_view/components_filter_hide_show_type_view_widget.dart';
import '/dms/home/settings/componenets/search_dialog/search_dialog_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_batch_inbox_action/component_sign_batch_inbox_action_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'pg_sign_not_use_widget.dart' show PgSignNotUseWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgSignNotUseModel extends FlutterFlowModel<PgSignNotUseWidget> {
  ///  Local state fields for this page.

  bool cbValidation = true;

  bool btnDocumentType = true;

  bool btnFolder = true;

  bool cbQueueEmail = true;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for ComponentsFilterHideShowTypeView component.
  late ComponentsFilterHideShowTypeViewModel
      componentsFilterHideShowTypeViewModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // Model for ComponentPagination component.
  late ComponentPaginationModel componentPaginationModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    componentsFilterHideShowTypeViewModel =
        createModel(context, () => ComponentsFilterHideShowTypeViewModel());
    componentPaginationModel =
        createModel(context, () => ComponentPaginationModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    componentsFilterHideShowTypeViewModel.dispose();
    componentPaginationModel.dispose();
  }
}
