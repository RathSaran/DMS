import '/backend/supabase/supabase.dart';
import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/dms/documents/component_of_documents/component_acivity_documents/component_acivity_documents_widget.dart';
import '/dms/work_flow/component_page_workflow/component_termsand_conditions/component_termsand_conditions_widget.dart';
import '/dms/work_flow/component_properties/component_receive_assign_to_someone_else/component_receive_assign_to_someone_else_widget.dart';
import '/dms/work_flow/component_properties/component_receive_reject/component_receive_reject_widget.dart';
import '/dms/work_flow/component_properties/component_receive_skip_signing/component_receive_skip_signing_widget.dart';
import '/dms/work_flow/component_properties/component_tool_sign_date/component_tool_sign_date_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'page_workflow_actions_widget.dart' show PageWorkflowActionsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PageWorkflowActionsModel
    extends FlutterFlowModel<PageWorkflowActionsWidget> {
  ///  Local state fields for this page.

  bool btnShowDocument = true;

  bool isShowTool = true;

  ///  State fields for stateful widgets in this page.

  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ddAction widget.
  String? ddActionValue;
  FormFieldController<String>? ddActionValueController;
  // Stores action output result for [Backend Call - Update Row(s)] action in btnFinish widget.
  List<FolderRow>? folderUpdates;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    smallTextHeaderModel = createModel(context, () => SmallTextHeaderModel());
  }

  @override
  void dispose() {
    navigateBackPageHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    smallTextHeaderModel.dispose();
    expandableExpandableController.dispose();
  }
}
