import '/backend/supabase/supabase.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'component_sign_upload_doc_action_widget.dart'
    show ComponentSignUploadDocActionWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentSignUploadDocActionModel
    extends FlutterFlowModel<ComponentSignUploadDocActionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel7;

  @override
  void initState(BuildContext context) {
    largeTextContentModel1 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel2 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel3 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel4 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel5 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel6 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel7 =
        createModel(context, () => LargeTextContentModel());
  }

  @override
  void dispose() {
    largeTextContentModel1.dispose();
    largeTextContentModel2.dispose();
    largeTextContentModel3.dispose();
    largeTextContentModel4.dispose();
    largeTextContentModel5.dispose();
    largeTextContentModel6.dispose();
    largeTextContentModel7.dispose();
  }
}
