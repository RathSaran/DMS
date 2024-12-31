import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_receiver_recipt/component_sign_receiver_recipt_widget.dart';
import '/dms/work_flow/component_properties/component_tool_sign_date/component_tool_sign_date_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'page_prepare_signature_widget.dart' show PagePrepareSignatureWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagePrepareSignatureModel
    extends FlutterFlowModel<PagePrepareSignatureWidget> {
  ///  Local state fields for this page.

  bool showTools = true;

  bool showDocument = true;

  ///  State fields for stateful widgets in this page.

  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  @override
  void initState(BuildContext context) {
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    smallTextHeaderModel1 = createModel(context, () => SmallTextHeaderModel());
    smallTextHeaderModel2 = createModel(context, () => SmallTextHeaderModel());
  }

  @override
  void dispose() {
    navigateBackPageHeaderModel.dispose();
    smallTextHeaderModel1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    smallTextHeaderModel2.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
  }
}
