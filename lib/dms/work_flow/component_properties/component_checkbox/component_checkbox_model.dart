import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'component_checkbox_widget.dart' show ComponentCheckboxWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentCheckboxModel extends FlutterFlowModel<ComponentCheckboxWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for tfSignature widget.
  FocusNode? tfSignatureFocusNode;
  TextEditingController? tfSignatureTextController;
  String? Function(BuildContext, String?)? tfSignatureTextControllerValidator;
  // State field(s) for tfSignatureLable widget.
  FocusNode? tfSignatureLableFocusNode1;
  TextEditingController? tfSignatureLableTextController1;
  String? Function(BuildContext, String?)?
      tfSignatureLableTextController1Validator;
  // State field(s) for tfSignatureLable widget.
  FocusNode? tfSignatureLableFocusNode2;
  TextEditingController? tfSignatureLableTextController2;
  String? Function(BuildContext, String?)?
      tfSignatureLableTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfSignatureFocusNode?.dispose();
    tfSignatureTextController?.dispose();

    tfSignatureLableFocusNode1?.dispose();
    tfSignatureLableTextController1?.dispose();

    tfSignatureLableFocusNode2?.dispose();
    tfSignatureLableTextController2?.dispose();
  }
}
