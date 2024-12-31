import '/backend/supabase/supabase.dart';
import '/components/base_elements/small_text_content/small_text_content_widget.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/dms/documents/component_of_documents/component_acivity_documents/component_acivity_documents_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_assign_member/component_sign_assign_member_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_complete_doc/component_sign_complete_doc_widget.dart';
import '/dms/work_flow/component_properties/component_receive_reject/component_receive_reject_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_sign_inbox_action_widget.dart'
    show ComponentSignInboxActionWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentSignInboxActionModel
    extends FlutterFlowModel<ComponentSignInboxActionWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in contReply widget.
  List<FolderRow>? updateToread;
  // Stores action output result for [Backend Call - Update Row(s)] action in contForward widget.
  List<FolderRow>? update;
  // Stores action output result for [Backend Call - Update Row(s)] action in contMarkAsRead widget.
  List<FolderRow>? updateSeen;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel1;
  // Model for SmallTextContent component.
  late SmallTextContentModel smallTextContentModel;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel2;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel3;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel4;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel5;
  // Model for ContentLargeText.
  late LargeTextContentModel contentLargeTextModel;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel6;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel7;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel8;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel9;

  @override
  void initState(BuildContext context) {
    largeTextContentModel1 =
        createModel(context, () => LargeTextContentModel());
    smallTextContentModel = createModel(context, () => SmallTextContentModel());
    largeTextContentModel2 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel3 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel4 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel5 =
        createModel(context, () => LargeTextContentModel());
    contentLargeTextModel = createModel(context, () => LargeTextContentModel());
    largeTextContentModel6 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel7 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel8 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel9 =
        createModel(context, () => LargeTextContentModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    largeTextContentModel1.dispose();
    smallTextContentModel.dispose();
    largeTextContentModel2.dispose();
    largeTextContentModel3.dispose();
    largeTextContentModel4.dispose();
    largeTextContentModel5.dispose();
    contentLargeTextModel.dispose();
    largeTextContentModel6.dispose();
    largeTextContentModel7.dispose();
    largeTextContentModel8.dispose();
    largeTextContentModel9.dispose();
  }
}
