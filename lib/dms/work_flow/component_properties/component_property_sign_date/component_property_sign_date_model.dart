import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_property_sign_date_widget.dart'
    show ComponentPropertySignDateWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentPropertySignDateModel
    extends FlutterFlowModel<ComponentPropertySignDateWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel1;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel2;

  @override
  void initState(BuildContext context) {
    smallTextHeaderModel = createModel(context, () => SmallTextHeaderModel());
    myTextFieldModel1 = createModel(context, () => MyTextFieldModel());
    myTextFieldModel2 = createModel(context, () => MyTextFieldModel());
  }

  @override
  void dispose() {
    smallTextHeaderModel.dispose();
    myTextFieldModel1.dispose();
    myTextFieldModel2.dispose();
  }
}
