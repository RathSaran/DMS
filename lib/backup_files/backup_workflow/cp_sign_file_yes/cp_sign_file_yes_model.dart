import '/backup_files/backup_workflow/cp_sign_doc_info/cp_sign_doc_info_widget.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_remove_doc/component_sign_remove_doc_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'cp_sign_file_yes_widget.dart' show CpSignFileYesWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CpSignFileYesModel extends FlutterFlowModel<CpSignFileYesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for cbFileSelect widget.
  bool? cbFileSelectValue;

  @override
  void initState(BuildContext context) {
    largeTextContentModel = createModel(context, () => LargeTextContentModel());
  }

  @override
  void dispose() {
    largeTextContentModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
