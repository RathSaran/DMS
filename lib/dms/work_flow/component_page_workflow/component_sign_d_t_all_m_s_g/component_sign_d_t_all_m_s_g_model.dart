import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/dms/documents/component_of_documents/component_acivity_documents/component_acivity_documents_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_batch_inbox_action/component_sign_batch_inbox_action_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_empty_data/component_sign_empty_data_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_inbox_action/component_sign_inbox_action_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_message_column/component_sign_message_column_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_priority/component_sign_priority_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_sign_d_t_all_m_s_g_widget.dart'
    show ComponentSignDTAllMSGWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentSignDTAllMSGModel
    extends FlutterFlowModel<ComponentSignDTAllMSGWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in ComponentSign_DTAllMSG widget.
  List<FolderRow>? queryAllFile;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FolderRow>();
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<FolderRow>? updateToSeen;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
