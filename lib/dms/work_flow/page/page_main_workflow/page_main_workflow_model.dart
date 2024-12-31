import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_all_m_s_g/component_sign_d_t_all_m_s_g_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_draft/component_sign_d_t_draft_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_inbox/component_sign_d_t_inbox_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_priority/component_sign_d_t_priority_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_send/component_sign_d_t_send_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_d_t_trash/component_sign_d_t_trash_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_filter_message/component_sign_filter_message_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_inbox_action/component_sign_inbox_action_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_mobile_data/component_sign_mobile_data_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_tab_setting/component_sign_tab_setting_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_upload_doc_action/component_sign_upload_doc_action_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'page_main_workflow_widget.dart' show PageMainWorkflowWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageMainWorkflowModel extends FlutterFlowModel<PageMainWorkflowWidget> {
  ///  Local state fields for this page.

  bool isEmptyMessage = false;

  bool isInboxSA = false;

  bool isSendOutSA = false;

  bool isDraftSA = false;

  bool isTrashSA = false;

  bool isAllSA = false;

  int messageDetail = 0;

  String? labelName = '-';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in PageMainWorkflow widget.
  List<FolderRow>? queryCheckOL;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for PageHeader component.
  late PageHeaderModel pageHeaderModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Query Rows] action in TabInbox widget.
  List<FolderRow>? queryCheck;
  // Model for ComponentSign_DTInbox component.
  late ComponentSignDTInboxModel componentSignDTInboxModel;
  // Model for ComponentSign_DTSend component.
  late ComponentSignDTSendModel componentSignDTSendModel;
  // Model for ComponentSign_DTPriority component.
  late ComponentSignDTPriorityModel componentSignDTPriorityModel;
  // Model for ComponentSign_DTDraft component.
  late ComponentSignDTDraftModel componentSignDTDraftModel;
  // Model for ComponentSign_DTTrash component.
  late ComponentSignDTTrashModel componentSignDTTrashModel;
  // Model for ComponentSign_DTAllMSG component.
  late ComponentSignDTAllMSGModel componentSignDTAllMSGModel;
  var scan = '';
  // Models for ComponentSign_MobileData dynamic component.
  late FlutterFlowDynamicModels<ComponentSignMobileDataModel>
      componentSignMobileDataModels1;
  // Models for ComponentSign_MobileData dynamic component.
  late FlutterFlowDynamicModels<ComponentSignMobileDataModel>
      componentSignMobileDataModels2;
  // Model for PaginationPanel component.
  late PaginationPanelModel paginationPanelModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    pageHeaderModel = createModel(context, () => PageHeaderModel());
    componentSignDTInboxModel =
        createModel(context, () => ComponentSignDTInboxModel());
    componentSignDTSendModel =
        createModel(context, () => ComponentSignDTSendModel());
    componentSignDTPriorityModel =
        createModel(context, () => ComponentSignDTPriorityModel());
    componentSignDTDraftModel =
        createModel(context, () => ComponentSignDTDraftModel());
    componentSignDTTrashModel =
        createModel(context, () => ComponentSignDTTrashModel());
    componentSignDTAllMSGModel =
        createModel(context, () => ComponentSignDTAllMSGModel());
    componentSignMobileDataModels1 =
        FlutterFlowDynamicModels(() => ComponentSignMobileDataModel());
    componentSignMobileDataModels2 =
        FlutterFlowDynamicModels(() => ComponentSignMobileDataModel());
    paginationPanelModel = createModel(context, () => PaginationPanelModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    pageHeaderModel.dispose();
    tabBarController?.dispose();
    componentSignDTInboxModel.dispose();
    componentSignDTSendModel.dispose();
    componentSignDTPriorityModel.dispose();
    componentSignDTDraftModel.dispose();
    componentSignDTTrashModel.dispose();
    componentSignDTAllMSGModel.dispose();
    componentSignMobileDataModels1.dispose();
    componentSignMobileDataModels2.dispose();
    paginationPanelModel.dispose();
  }
}
