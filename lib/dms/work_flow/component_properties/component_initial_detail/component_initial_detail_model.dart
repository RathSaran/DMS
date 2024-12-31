import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'component_initial_detail_widget.dart' show ComponentInitialDetailWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class ComponentInitialDetailModel
    extends FlutterFlowModel<ComponentInitialDetailWidget> {
  ///  Local state fields for this component.

  Color? bg = Color(4285489647);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Signature widget.
  SignatureController? signatureController;
  // State field(s) for tfSignature widget.
  FocusNode? tfSignatureFocusNode1;
  TextEditingController? tfSignatureTextController1;
  String? Function(BuildContext, String?)? tfSignatureTextController1Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for tfSignature widget.
  FocusNode? tfSignatureFocusNode2;
  TextEditingController? tfSignatureTextController2;
  String? Function(BuildContext, String?)? tfSignatureTextController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for tfSignature widget.
  FocusNode? tfSignatureFocusNode3;
  TextEditingController? tfSignatureTextController3;
  String? Function(BuildContext, String?)? tfSignatureTextController3Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for tfSignature widget.
  FocusNode? tfSignatureFocusNode4;
  TextEditingController? tfSignatureTextController4;
  String? Function(BuildContext, String?)? tfSignatureTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    signatureController?.dispose();
    tfSignatureFocusNode1?.dispose();
    tfSignatureTextController1?.dispose();

    tfSignatureFocusNode2?.dispose();
    tfSignatureTextController2?.dispose();

    tfSignatureFocusNode3?.dispose();
    tfSignatureTextController3?.dispose();

    tfSignatureFocusNode4?.dispose();
    tfSignatureTextController4?.dispose();
  }
}
