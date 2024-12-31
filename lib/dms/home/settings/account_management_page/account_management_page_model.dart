import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/home/settings/componenets/account_management_details/account_management_details_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'account_management_page_widget.dart' show AccountManagementPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountManagementPageModel
    extends FlutterFlowModel<AccountManagementPageWidget> {
  ///  Local state fields for this page.

  bool isEdit = false;

  bool isUploadProfile = true;

  bool seeMore = true;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // Model for PaginationPanel component.
  late PaginationPanelModel paginationPanelModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    paginationPanelModel = createModel(context, () => PaginationPanelModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel.dispose();
    paginationPanelModel.dispose();
  }
}
