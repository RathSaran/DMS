import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'component_add_user_workflow_copy_widget.dart'
    show ComponentAddUserWorkflowCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentAddUserWorkflowCopyModel
    extends FlutterFlowModel<ComponentAddUserWorkflowCopyWidget> {
  ///  Local state fields for this component.

  bool selectAll = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? departments;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel0;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel1;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<UsersRow>? userLevel1;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel2;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<UsersRow>? userLevel2;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel3;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<UsersRow>? userLevel3;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel4;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<UsersRow>? userLevel4;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel5;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<UsersRow>? userLevel5;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel6;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<UsersRow>? userLevel6;
  // Stores action output result for [Backend Call - Query Rows] action in ComponentAddUserWorkflowCopy widget.
  List<DepartmentsRow>? dLevel7;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap2 = {};
  List<DepartmentsRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap1 = {};
  List<UsersRow> get selectUserCheckedItems1 => selectUserValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap3 = {};
  List<DepartmentsRow> get checkboxCheckedItems3 => checkboxValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap2 = {};
  List<UsersRow> get selectUserCheckedItems2 => selectUserValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap4 = {};
  List<DepartmentsRow> get checkboxCheckedItems4 => checkboxValueMap4.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap3 = {};
  List<UsersRow> get selectUserCheckedItems3 => selectUserValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap5 = {};
  List<DepartmentsRow> get checkboxCheckedItems5 => checkboxValueMap5.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap4 = {};
  List<UsersRow> get selectUserCheckedItems4 => selectUserValueMap4.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap6 = {};
  List<DepartmentsRow> get checkboxCheckedItems6 => checkboxValueMap6.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap5 = {};
  List<UsersRow> get selectUserCheckedItems5 => selectUserValueMap5.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap7 = {};
  List<DepartmentsRow> get checkboxCheckedItems7 => checkboxValueMap7.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap6 = {};
  List<UsersRow> get selectUserCheckedItems6 => selectUserValueMap6.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap8 = {};
  List<DepartmentsRow> get checkboxCheckedItems8 => checkboxValueMap8.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap7 = {};
  List<UsersRow> get selectUserCheckedItems7 => selectUserValueMap7.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap9 = {};
  List<DepartmentsRow> get checkboxCheckedItems9 => checkboxValueMap9.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap8 = {};
  List<UsersRow> get selectUserCheckedItems8 => selectUserValueMap8.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap10 = {};
  List<DepartmentsRow> get checkboxCheckedItems10 => checkboxValueMap10.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap9 = {};
  List<UsersRow> get selectUserCheckedItems9 => selectUserValueMap9.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap11 = {};
  List<DepartmentsRow> get checkboxCheckedItems11 => checkboxValueMap11.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for selectUser widget.
  Map<UsersRow, bool> selectUserValueMap10 = {};
  List<UsersRow> get selectUserCheckedItems10 => selectUserValueMap10.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<DepartmentsRow, bool> checkboxValueMap12 = {};
  List<DepartmentsRow> get checkboxCheckedItems12 => checkboxValueMap12.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}