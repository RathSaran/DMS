import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/component_add_new_doc/component_add_new_doc_widget.dart';
import '/dms/documents/component_of_documents/component_card_view_file/component_card_view_file_widget.dart';
import '/dms/documents/component_of_documents/component_card_view_folder/component_card_view_folder_widget.dart';
import '/dms/documents/component_of_documents/component_filter_documents/component_filter_documents_widget.dart';
import '/dms/documents/component_of_documents/component_option_documents/component_option_documents_widget.dart';
import '/dms/documents/component_of_documents/component_option_floder/component_option_floder_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'page_documents_widget.dart' show PageDocumentsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageDocumentsModel extends FlutterFlowModel<PageDocumentsWidget> {
  ///  Local state fields for this page.

  bool isList = true;

  bool type = true;

  String? parentPath = 'documents/';

  List<String> breadPage = [];
  void addToBreadPage(String item) => breadPage.add(item);
  void removeFromBreadPage(String item) => breadPage.remove(item);
  void removeAtIndexFromBreadPage(int index) => breadPage.removeAt(index);
  void insertAtIndexInBreadPage(int index, String item) =>
      breadPage.insert(index, item);
  void updateBreadPageAtIndex(int index, Function(String) updateFn) =>
      breadPage[index] = updateFn(breadPage[index]);

  bool nullFolder = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in PageDocuments widget.
  List<FolderRow>? folders;
  // Stores action output result for [Backend Call - Query Rows] action in PageDocuments widget.
  List<SubfolderRow>? subFolder;
  // Stores action output result for [Backend Call - Query Rows] action in PageDocuments widget.
  List<FilesRow>? files;
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

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  Map<FolderRow, bool> checkboxValueMap2 = {};
  List<FolderRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Model for PaginationPanel component.
  late PaginationPanelModel paginationPanelModel1;
  // Models for ComponentCardViewFile dynamic component.
  late FlutterFlowDynamicModels<ComponentCardViewFileModel>
      componentCardViewFileModels2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  Map<FolderRow, bool> checkboxValueMap4 = {};
  List<FolderRow> get checkboxCheckedItems4 => checkboxValueMap4.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Model for PaginationPanel component.
  late PaginationPanelModel paginationPanelModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  Map<FolderRow, bool> checkboxValueMap6 = {};
  List<FolderRow> get checkboxCheckedItems6 => checkboxValueMap6.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Model for PaginationPanel component.
  late PaginationPanelModel paginationPanelModel3;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    pageHeaderModel = createModel(context, () => PageHeaderModel());
    paginationPanelModel1 = createModel(context, () => PaginationPanelModel());
    componentCardViewFileModels2 =
        FlutterFlowDynamicModels(() => ComponentCardViewFileModel());
    paginationPanelModel2 = createModel(context, () => PaginationPanelModel());
    paginationPanelModel3 = createModel(context, () => PaginationPanelModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    pageHeaderModel.dispose();
    tabBarController?.dispose();
    paginationPanelModel1.dispose();
    componentCardViewFileModels2.dispose();
    paginationPanelModel2.dispose();
    paginationPanelModel3.dispose();
  }
}
