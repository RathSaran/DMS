import '/backend/supabase/supabase.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/dms/documents/component_of_documents/component_add_user_workflow/component_add_user_workflow_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_process_document_widget.dart'
    show ComponentProcessDocumentWidget;
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentProcessDocumentModel
    extends FlutterFlowModel<ComponentProcessDocumentWidget> {
  ///  Local state fields for this component.

  bool isSignMyself = false;

  bool isSenttoOther = true;

  DateTime? validTill;

  ///  State fields for stateful widgets in this component.

  // State field(s) for cbSentToOther widget.
  bool? cbSentToOtherValue;
  // State field(s) for cbSignMyself widget.
  bool? cbSignMyselfValue;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for tfMsgDescription widget.
  FocusNode? tfMsgDescriptionFocusNode;
  TextEditingController? tfMsgDescriptionTextController;
  String? Function(BuildContext, String?)?
      tfMsgDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    myTextFieldModel = createModel(context, () => MyTextFieldModel());
  }

  @override
  void dispose() {
    myTextFieldModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    tfMsgDescriptionFocusNode?.dispose();
    tfMsgDescriptionTextController?.dispose();
  }
}
