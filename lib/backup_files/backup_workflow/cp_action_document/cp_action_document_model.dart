import '/components/large_text_content/large_text_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'cp_action_document_widget.dart' show CpActionDocumentWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CpActionDocumentModel extends FlutterFlowModel<CpActionDocumentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel1;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel2;

  @override
  void initState(BuildContext context) {
    largeTextContentModel1 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel2 =
        createModel(context, () => LargeTextContentModel());
  }

  @override
  void dispose() {
    largeTextContentModel1.dispose();
    largeTextContentModel2.dispose();
  }
}
