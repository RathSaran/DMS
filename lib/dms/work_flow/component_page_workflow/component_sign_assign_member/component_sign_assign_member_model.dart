import '/backend/supabase/supabase.dart';
import '/dms/documents/component_of_documents/component_add_user_workflow/component_add_user_workflow_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'component_sign_assign_member_widget.dart'
    show ComponentSignAssignMemberWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentSignAssignMemberModel
    extends FlutterFlowModel<ComponentSignAssignMemberWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for tfNoteToAll widget.
  FocusNode? tfNoteToAllFocusNode;
  TextEditingController? tfNoteToAllTextController;
  String? Function(BuildContext, String?)? tfNoteToAllTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    tfNoteToAllFocusNode?.dispose();
    tfNoteToAllTextController?.dispose();
  }
}
