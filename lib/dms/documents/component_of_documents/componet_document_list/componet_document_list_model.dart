import '/backend/supabase/supabase.dart';
import '/dms/work_flow/component_page_workflow/component_sign_empty_data/component_sign_empty_data_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'componet_document_list_widget.dart' show ComponetDocumentListWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponetDocumentListModel
    extends FlutterFlowModel<ComponetDocumentListWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in ComponetDocumentList widget.
  List<FolderRow>? folder;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FolderRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
