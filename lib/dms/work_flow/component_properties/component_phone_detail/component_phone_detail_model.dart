import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_phone_detail_widget.dart' show ComponentPhoneDetailWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentPhoneDetailModel
    extends FlutterFlowModel<ComponentPhoneDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfPhone widget.
  FocusNode? tfPhoneFocusNode;
  TextEditingController? tfPhoneTextController;
  String? Function(BuildContext, String?)? tfPhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfPhoneFocusNode?.dispose();
    tfPhoneTextController?.dispose();
  }
}
