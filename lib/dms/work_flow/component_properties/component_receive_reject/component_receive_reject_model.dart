import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'component_receive_reject_widget.dart' show ComponentReceiveRejectWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentReceiveRejectModel
    extends FlutterFlowModel<ComponentReceiveRejectWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfVersion widget.
  FocusNode? tfVersionFocusNode;
  TextEditingController? tfVersionTextController;
  String? Function(BuildContext, String?)? tfVersionTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<FolderRow>? folderUpdates;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfVersionFocusNode?.dispose();
    tfVersionTextController?.dispose();
  }
}
