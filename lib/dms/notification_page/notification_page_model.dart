import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/component/empty_list/empty_list_widget.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'notification_page_widget.dart' show NotificationPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationPageModel extends FlutterFlowModel<NotificationPageWidget> {
  ///  Local state fields for this page.

  bool emptyNotifications = true;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for PageHeader component.
  late PageHeaderModel pageHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<UserNotificationRow>? notificationss;
  // Model for empty_list component.
  late EmptyListModel emptyListModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    pageHeaderModel = createModel(context, () => PageHeaderModel());
    emptyListModel = createModel(context, () => EmptyListModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    pageHeaderModel.dispose();
    tabBarController?.dispose();
    emptyListModel.dispose();
  }
}
