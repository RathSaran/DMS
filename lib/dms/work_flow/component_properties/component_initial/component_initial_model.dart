import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'component_initial_widget.dart' show ComponentInitialWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentInitialModel extends FlutterFlowModel<ComponentInitialWidget> {
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
  FocusNode? tfSignatureLableFocusNode;
  TextEditingController? tfSignatureLableTextController;
  String? Function(BuildContext, String?)?
      tfSignatureLableTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfSignatureFocusNode?.dispose();
    tfSignatureTextController?.dispose();

    tfSignatureLableFocusNode?.dispose();
    tfSignatureLableTextController?.dispose();
  }
}
