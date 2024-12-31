import '/backend/supabase/supabase.dart';
import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_inbox_action/component_sign_inbox_action_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'page_preview_document_widget.dart' show PagePreviewDocumentWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagePreviewDocumentModel
    extends FlutterFlowModel<PagePreviewDocumentWidget> {
  ///  Local state fields for this page.

  bool btnShowDocument = true;

  int docWidth = 1200;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    smallTextHeaderModel = createModel(context, () => SmallTextHeaderModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    smallTextHeaderModel.dispose();
    expandableExpandableController.dispose();
  }
}
