import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'component_rename_folder_widget.dart' show ComponentRenameFolderWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentRenameFolderModel
    extends FlutterFlowModel<ComponentRenameFolderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for renameYourFolder widget.
  FocusNode? renameYourFolderFocusNode;
  TextEditingController? renameYourFolderTextController;
  String? Function(BuildContext, String?)?
      renameYourFolderTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    renameYourFolderFocusNode?.dispose();
    renameYourFolderTextController?.dispose();
  }
}