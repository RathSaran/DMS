import '/backend/supabase/supabase.dart';
import '/dms/documents/component_of_documents/component_create_folder/component_create_folder_widget.dart';
import '/dms/documents/component_of_documents/component_import_from_cloud/component_import_from_cloud_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'component_add_new_doc_widget.dart' show ComponentAddNewDocWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentAddNewDocModel
    extends FlutterFlowModel<ComponentAddNewDocWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
