import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'component_sign_add_field_property_widget.dart'
    show ComponentSignAddFieldPropertyWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentSignAddFieldPropertyModel
    extends FlutterFlowModel<ComponentSignAddFieldPropertyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfLabelName widget.
  FocusNode? tfLabelNameFocusNode;
  TextEditingController? tfLabelNameTextController;
  String? Function(BuildContext, String?)? tfLabelNameTextControllerValidator;
  // State field(s) for ddAuthType widget.
  String? ddAuthTypeValue;
  FormFieldController<String>? ddAuthTypeValueController;
  // State field(s) for tfInitialValue widget.
  FocusNode? tfInitialValueFocusNode;
  TextEditingController? tfInitialValueTextController;
  String? Function(BuildContext, String?)?
      tfInitialValueTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfLabelNameFocusNode?.dispose();
    tfLabelNameTextController?.dispose();

    tfInitialValueFocusNode?.dispose();
    tfInitialValueTextController?.dispose();
  }
}
