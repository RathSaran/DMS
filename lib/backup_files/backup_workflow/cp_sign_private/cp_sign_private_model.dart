import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'cp_sign_private_widget.dart' show CpSignPrivateWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CpSignPrivateModel extends FlutterFlowModel<CpSignPrivateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfNoteToAll widget.
  FocusNode? tfNoteToAllFocusNode;
  TextEditingController? tfNoteToAllTextController;
  String? Function(BuildContext, String?)? tfNoteToAllTextControllerValidator;
  // State field(s) for ddAuthType widget.
  String? ddAuthTypeValue;
  FormFieldController<String>? ddAuthTypeValueController;
  // State field(s) for ddCountryCode widget.
  String? ddCountryCodeValue;
  FormFieldController<String>? ddCountryCodeValueController;
  // State field(s) for tfUserName widget.
  FocusNode? tfUserNameFocusNode;
  TextEditingController? tfUserNameTextController;
  final tfUserNameMask = MaskTextInputFormatter(mask: '## ### ### ### ## ');
  String? Function(BuildContext, String?)? tfUserNameTextControllerValidator;
  // State field(s) for tfCustomCode widget.
  FocusNode? tfCustomCodeFocusNode;
  TextEditingController? tfCustomCodeTextController;
  late bool tfCustomCodeVisibility;
  String? Function(BuildContext, String?)? tfCustomCodeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tfCustomCodeVisibility = false;
  }

  @override
  void dispose() {
    tfNoteToAllFocusNode?.dispose();
    tfNoteToAllTextController?.dispose();

    tfUserNameFocusNode?.dispose();
    tfUserNameTextController?.dispose();

    tfCustomCodeFocusNode?.dispose();
    tfCustomCodeTextController?.dispose();
  }
}
