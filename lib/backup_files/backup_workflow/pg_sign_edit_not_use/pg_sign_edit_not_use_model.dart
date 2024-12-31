import '/components/base_elements/small_text_content/small_text_content_widget.dart';
import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_assign_member/component_sign_assign_member_widget.dart';
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
import 'pg_sign_edit_not_use_widget.dart' show PgSignEditNotUseWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PgSignEditNotUseModel extends FlutterFlowModel<PgSignEditNotUseWidget> {
  ///  Local state fields for this page.

  bool cbSchedule = false;

  bool btnShowDocument = true;

  bool btnShowTool = true;

  ///  State fields for stateful widgets in this page.

  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel1;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel2;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel;
  // State field(s) for tfDocumentName widget.
  FocusNode? tfDocumentNameFocusNode;
  TextEditingController? tfDocumentNameTextController;
  String? Function(BuildContext, String?)?
      tfDocumentNameTextControllerValidator;
  // Model for SmallTextContent component.
  late SmallTextContentModel smallTextContentModel1;
  // Model for SmallTextContent component.
  late SmallTextContentModel smallTextContentModel2;
  // State field(s) for ddMoreAction widget.
  String? ddMoreActionValue;
  FormFieldController<String>? ddMoreActionValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel3;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    smallTextHeaderModel1 = createModel(context, () => SmallTextHeaderModel());
    smallTextHeaderModel2 = createModel(context, () => SmallTextHeaderModel());
    largeTextContentModel = createModel(context, () => LargeTextContentModel());
    smallTextContentModel1 =
        createModel(context, () => SmallTextContentModel());
    smallTextContentModel2 =
        createModel(context, () => SmallTextContentModel());
    smallTextHeaderModel3 = createModel(context, () => SmallTextHeaderModel());
  }

  @override
  void dispose() {
    navigateBackPageHeaderModel.dispose();
    smallTextHeaderModel1.dispose();
    smallTextHeaderModel2.dispose();
    largeTextContentModel.dispose();
    tfDocumentNameFocusNode?.dispose();
    tfDocumentNameTextController?.dispose();

    smallTextContentModel1.dispose();
    smallTextContentModel2.dispose();
    smallTextHeaderModel3.dispose();
    expandableExpandableController.dispose();
  }
}
