import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'component_receive_assign_to_someone_else_widget.dart'
    show ComponentReceiveAssignToSomeoneElseWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentReceiveAssignToSomeoneElseModel
    extends FlutterFlowModel<ComponentReceiveAssignToSomeoneElseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfNoteToAll widget.
  FocusNode? tfNoteToAllFocusNode1;
  TextEditingController? tfNoteToAllTextController1;
  String? Function(BuildContext, String?)? tfNoteToAllTextController1Validator;
  // State field(s) for tfNoteToAll widget.
  FocusNode? tfNoteToAllFocusNode2;
  TextEditingController? tfNoteToAllTextController2;
  String? Function(BuildContext, String?)? tfNoteToAllTextController2Validator;
  // State field(s) for tfVersion widget.
  FocusNode? tfVersionFocusNode;
  TextEditingController? tfVersionTextController;
  String? Function(BuildContext, String?)? tfVersionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfNoteToAllFocusNode1?.dispose();
    tfNoteToAllTextController1?.dispose();

    tfNoteToAllFocusNode2?.dispose();
    tfNoteToAllTextController2?.dispose();

    tfVersionFocusNode?.dispose();
    tfVersionTextController?.dispose();
  }
}
