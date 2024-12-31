import '/components/base_elements/close_dialog/close_dialog_widget.dart';
import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'cp_sign_doc_info_widget.dart' show CpSignDocInfoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CpSignDocInfoModel extends FlutterFlowModel<CpSignDocInfoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for CloseDialog component.
  late CloseDialogModel closeDialogModel;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel1;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel2;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel1;
  // State field(s) for tfAddDocType widget.
  FocusNode? tfAddDocTypeFocusNode1;
  TextEditingController? tfAddDocTypeTextController1;
  String? Function(BuildContext, String?)? tfAddDocTypeTextController1Validator;
  // State field(s) for ddDocType widget.
  String? ddDocTypeValue1;
  FormFieldController<String>? ddDocTypeValueController1;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel2;
  // State field(s) for tfAddDocType widget.
  FocusNode? tfAddDocTypeFocusNode2;
  TextEditingController? tfAddDocTypeTextController2;
  String? Function(BuildContext, String?)? tfAddDocTypeTextController2Validator;
  // State field(s) for ddDocType widget.
  String? ddDocTypeValue2;
  FormFieldController<String>? ddDocTypeValueController2;
  // Model for lbTags.
  late LargeTextContentModel lbTagsModel;
  // State field(s) for ddFolder widget.
  String? ddFolderValue;
  FormFieldController<String>? ddFolderValueController;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel3;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel4;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel5;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel3;
  // State field(s) for tfVersion widget.
  FocusNode? tfVersionFocusNode;
  TextEditingController? tfVersionTextController;
  String? Function(BuildContext, String?)? tfVersionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    closeDialogModel = createModel(context, () => CloseDialogModel());
    smallTextHeaderModel = createModel(context, () => SmallTextHeaderModel());
    myTextFieldModel1 = createModel(context, () => MyTextFieldModel());
    myTextFieldModel2 = createModel(context, () => MyTextFieldModel());
    largeTextContentModel1 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel2 =
        createModel(context, () => LargeTextContentModel());
    lbTagsModel = createModel(context, () => LargeTextContentModel());
    myTextFieldModel3 = createModel(context, () => MyTextFieldModel());
    myTextFieldModel4 = createModel(context, () => MyTextFieldModel());
    myTextFieldModel5 = createModel(context, () => MyTextFieldModel());
    largeTextContentModel3 =
        createModel(context, () => LargeTextContentModel());
  }

  @override
  void dispose() {
    closeDialogModel.dispose();
    smallTextHeaderModel.dispose();
    myTextFieldModel1.dispose();
    myTextFieldModel2.dispose();
    largeTextContentModel1.dispose();
    tfAddDocTypeFocusNode1?.dispose();
    tfAddDocTypeTextController1?.dispose();

    largeTextContentModel2.dispose();
    tfAddDocTypeFocusNode2?.dispose();
    tfAddDocTypeTextController2?.dispose();

    lbTagsModel.dispose();
    myTextFieldModel3.dispose();
    myTextFieldModel4.dispose();
    myTextFieldModel5.dispose();
    largeTextContentModel3.dispose();
    tfVersionFocusNode?.dispose();
    tfVersionTextController?.dispose();
  }
}
