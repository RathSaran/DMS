import '/auth/supabase_auth/auth_util.dart';
import '/components/cancel_dialog/cancel_dialog_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_new_account_widget.dart' show AddNewAccountWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewAccountModel extends FlutterFlowModel<AddNewAccountWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Email.
  late MyTextFieldModel emailModel;
  // Model for Password.
  late MyTextFieldModel passwordModel;
  // Model for CancelDialog component.
  late CancelDialogModel cancelDialogModel;

  @override
  void initState(BuildContext context) {
    emailModel = createModel(context, () => MyTextFieldModel());
    passwordModel = createModel(context, () => MyTextFieldModel());
    cancelDialogModel = createModel(context, () => CancelDialogModel());
  }

  @override
  void dispose() {
    emailModel.dispose();
    passwordModel.dispose();
    cancelDialogModel.dispose();
  }
}
