import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'component_phone_widget.dart' show ComponentPhoneWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentPhoneModel extends FlutterFlowModel<ComponentPhoneWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for tfFieldName widget.
  FocusNode? tfFieldNameFocusNode;
  TextEditingController? tfFieldNameTextController;
  String? Function(BuildContext, String?)? tfFieldNameTextControllerValidator;
  // State field(s) for tfDataLable widget.
  FocusNode? tfDataLableFocusNode;
  TextEditingController? tfDataLableTextController;
  String? Function(BuildContext, String?)? tfDataLableTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for tfDescriptionLable widget.
  FocusNode? tfDescriptionLableFocusNode;
  TextEditingController? tfDescriptionLableTextController;
  String? Function(BuildContext, String?)?
      tfDescriptionLableTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfFieldNameFocusNode?.dispose();
    tfFieldNameTextController?.dispose();

    tfDataLableFocusNode?.dispose();
    tfDataLableTextController?.dispose();

    tfDescriptionLableFocusNode?.dispose();
    tfDescriptionLableTextController?.dispose();
  }
}
