import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/dms/documents/component_of_documents/component_process_document/component_process_document_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_add_field_property/component_sign_add_field_property_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_file_no/component_sign_file_no_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_remove_doc/component_sign_remove_doc_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'page_workflow_process_widget.dart' show PageWorkflowProcessWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageWorkflowProcessModel
    extends FlutterFlowModel<PageWorkflowProcessWidget> {
  ///  Local state fields for this page.

  bool isSignMyself = false;

  bool isAddEmail = false;

  DateTime? validDate;

  bool trickAddField = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // Model for ComponentSignFile-No component.
  late ComponentSignFileNoModel componentSignFileNoModel;
  // Model for MyTextFieldReceiveNO.
  late MyTextFieldModel myTextFieldReceiveNOModel;
  // Model for MyTextFieldSendNO.
  late MyTextFieldModel myTextFieldSendNOModel;
  // Model for MyTextFieldDocName.
  late MyTextFieldModel myTextFieldDocNameModel;
  // State field(s) for DropDownFolder widget.
  String? dropDownFolderValue;
  FormFieldController<String>? dropDownFolderValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownFolder widget.
  List<FolderRow>? items;
  // State field(s) for ddPriority widget.
  int? ddPriorityValue;
  FormFieldController<int>? ddPriorityValueController;
  // State field(s) for ddSensitivity widget.
  int? ddSensitivityValue;
  FormFieldController<int>? ddSensitivityValueController;
  // State field(s) for DocumentTag widget.
  String? documentTagValue;
  FormFieldController<String>? documentTagValueController;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel1;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel2;
  // Model for ComponentProcessDocument component.
  late ComponentProcessDocumentModel componentProcessDocumentModel;
  // Stores action output result for [Validate Form] action in ButtonSave widget.
  bool? validateTitle;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validate;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    componentSignFileNoModel =
        createModel(context, () => ComponentSignFileNoModel());
    myTextFieldReceiveNOModel = createModel(context, () => MyTextFieldModel());
    myTextFieldSendNOModel = createModel(context, () => MyTextFieldModel());
    myTextFieldDocNameModel = createModel(context, () => MyTextFieldModel());
    myTextFieldModel1 = createModel(context, () => MyTextFieldModel());
    myTextFieldModel2 = createModel(context, () => MyTextFieldModel());
    componentProcessDocumentModel =
        createModel(context, () => ComponentProcessDocumentModel());
    myTextFieldReceiveNOModel.textControllerValidator =
        _formTextFieldValidator1;
    myTextFieldSendNOModel.textControllerValidator = _formTextFieldValidator2;
    myTextFieldDocNameModel.textControllerValidator = _formTextFieldValidator3;
    componentProcessDocumentModel.tfMsgDescriptionTextControllerValidator =
        _formTextFieldValidator4;
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel.dispose();
    componentSignFileNoModel.dispose();
    myTextFieldReceiveNOModel.dispose();
    myTextFieldSendNOModel.dispose();
    myTextFieldDocNameModel.dispose();
    myTextFieldModel1.dispose();
    myTextFieldModel2.dispose();
    componentProcessDocumentModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '20mk73jr' /* Please input value! */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '911pbh1a' /* Please input value! */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'm1nupm5q' /* Please input value! */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ewx53cn1' /* Please input value! */,
      );
    }

    return null;
  }
}
