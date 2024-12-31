import '/backend/supabase/supabase.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'component_sign_complete_doc_widget.dart'
    show ComponentSignCompleteDocWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentSignCompleteDocModel
    extends FlutterFlowModel<ComponentSignCompleteDocWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel;
  // State field(s) for tfNote widget.
  FocusNode? tfNoteFocusNode;
  TextEditingController? tfNoteTextController;
  String? Function(BuildContext, String?)? tfNoteTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<FolderRow>? updateFolder;

  @override
  void initState(BuildContext context) {
    myTextFieldModel = createModel(context, () => MyTextFieldModel());
    myTextFieldModel.textControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    myTextFieldModel.dispose();
    tfNoteFocusNode?.dispose();
    tfNoteTextController?.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r58u66pi' /* Please input value */,
      );
    }

    return null;
  }
}
