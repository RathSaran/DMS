import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'customization_page_widget.dart' show CustomizationPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomizationPageModel extends FlutterFlowModel<CustomizationPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Selecttextstyle widget.
  String? selecttextstyleValue;
  FormFieldController<String>? selecttextstyleValueController;
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel1 =
        createModel(context, () => NavigateBackPageHeaderModel());
    navigateBackPageHeaderModel2 =
        createModel(context, () => NavigateBackPageHeaderModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    navigateBackPageHeaderModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
