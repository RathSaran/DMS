import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_company_detail_widget.dart' show ComponentCompanyDetailWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentCompanyDetailModel
    extends FlutterFlowModel<ComponentCompanyDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfCompany widget.
  FocusNode? tfCompanyFocusNode;
  TextEditingController? tfCompanyTextController;
  String? Function(BuildContext, String?)? tfCompanyTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfCompanyFocusNode?.dispose();
    tfCompanyTextController?.dispose();
  }
}
