import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_email_detail_widget.dart' show ComponentEmailDetailWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentEmailDetailModel
    extends FlutterFlowModel<ComponentEmailDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfEmail widget.
  FocusNode? tfEmailFocusNode;
  TextEditingController? tfEmailTextController;
  String? Function(BuildContext, String?)? tfEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfEmailFocusNode?.dispose();
    tfEmailTextController?.dispose();
  }
}
