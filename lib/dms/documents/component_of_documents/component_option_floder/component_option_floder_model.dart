import '/backend/supabase/supabase.dart';
import '/dms/documents/component_of_documents/component_activity_folder/component_activity_folder_widget.dart';
import '/dms/documents/component_of_documents/component_delete_folder/component_delete_folder_widget.dart';
import '/dms/documents/component_of_documents/component_option_organize/component_option_organize_widget.dart';
import '/dms/documents/component_of_documents/component_rename_folder/component_rename_folder_widget.dart';
import '/dms/documents/component_of_documents/component_share/component_share_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_option_floder_widget.dart' show ComponentOptionFloderWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentOptionFloderModel
    extends FlutterFlowModel<ComponentOptionFloderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Row widget.
  List<FolderRow>? delete;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
