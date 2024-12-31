import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'component_create_folder_widget.dart' show ComponentCreateFolderWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentCreateFolderModel
    extends FlutterFlowModel<ComponentCreateFolderWidget> {
  ///  Local state fields for this component.

  bool color1 = true;

  bool color2 = true;

  bool color3 = true;

  bool color4 = true;

  bool color5 = true;

  bool color6 = true;

  bool color7 = true;

  bool color8 = true;

  bool color9 = true;

  bool color10 = true;

  bool color11 = true;

  bool color12 = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<FolderRow>? queryForRebuildUI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
