import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'component_radio_widget.dart' show ComponentRadioWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentRadioModel extends FlutterFlowModel<ComponentRadioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for tfRadio widget.
  FocusNode? tfRadioFocusNode1;
  TextEditingController? tfRadioTextController1;
  String? Function(BuildContext, String?)? tfRadioTextController1Validator;
  // State field(s) for tfRadio widget.
  FocusNode? tfRadioFocusNode2;
  TextEditingController? tfRadioTextController2;
  String? Function(BuildContext, String?)? tfRadioTextController2Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfRadioFocusNode1?.dispose();
    tfRadioTextController1?.dispose();

    tfRadioFocusNode2?.dispose();
    tfRadioTextController2?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
