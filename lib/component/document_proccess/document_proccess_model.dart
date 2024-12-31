import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'document_proccess_widget.dart' show DocumentProccessWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class DocumentProccessModel extends FlutterFlowModel<DocumentProccessWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cbSentToOther widget.
  bool? cbSentToOtherValue;
  // State field(s) for cbSignMyself widget.
  bool? cbSignMyselfValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for cbValidation widget.
  bool? cbValidationValue;
  // State field(s) for tfDateValidation widget.
  FocusNode? tfDateValidationFocusNode;
  TextEditingController? tfDateValidationTextController;
  final tfDateValidationMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      tfDateValidationTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    tfDateValidationFocusNode?.dispose();
    tfDateValidationTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
