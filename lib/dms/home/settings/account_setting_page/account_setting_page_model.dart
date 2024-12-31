import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/base_elements/small_text_header/small_text_header_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/components/large_text_content/large_text_content_widget.dart';
import '/components/large_text_header/large_text_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/dms/home/settings/custom_date_format/custom_date_format_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'account_setting_page_widget.dart' show AccountSettingPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountSettingPageModel
    extends FlutterFlowModel<AccountSettingPageWidget> {
  ///  Local state fields for this page.

  bool isEdit = false;

  bool isUploadProfile = true;

  bool seeMore = true;

  bool isChangePassword = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel1;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for UserNameTextField.
  late MyTextFieldModel userNameTextFieldModel;
  // State field(s) for LargeGenderDropDown widget.
  String? largeGenderDropDownValue;
  FormFieldController<String>? largeGenderDropDownValueController;
  // Model for EmailTextField.
  late MyTextFieldModel emailTextFieldModel;
  // Model for PhoneNumberTextField.
  late MyTextFieldModel phoneNumberTextFieldModel;
  // Model for LargeAddressTextField.
  late MyTextFieldModel largeAddressTextFieldModel;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel2;
  // State field(s) for EmailResetPassword widget.
  FocusNode? emailResetPasswordFocusNode;
  TextEditingController? emailResetPasswordTextController;
  String? Function(BuildContext, String?)?
      emailResetPasswordTextControllerValidator;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel3;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel1;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel4;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // State field(s) for Switch widget.
  bool? switchValue5;
  // State field(s) for Switch widget.
  bool? switchValue6;
  // State field(s) for Switch widget.
  bool? switchValue7;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel5;
  // State field(s) for Switch widget.
  bool? switchValue8;
  // State field(s) for Switch widget.
  bool? switchValue9;
  // Model for ChangeDateHeader.
  late SmallTextHeaderModel changeDateHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for LanguagesHeader.
  late SmallTextHeaderModel languagesHeaderModel;
  // Model for AppearenceHeader.
  late SmallTextHeaderModel appearenceHeaderModel;
  // Model for SmallTextHeader component.
  late SmallTextHeaderModel smallTextHeaderModel6;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel2;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel3;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel1;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel4;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel5;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel6;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel2;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel7;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel8;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel9;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel3;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel10;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel11;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel4;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel12;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel13;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel5;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel14;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel15;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel6;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel16;
  // Model for LargeTextHeader component.
  late LargeTextHeaderModel largeTextHeaderModel7;
  // Model for LargeTextContent component.
  late LargeTextContentModel largeTextContentModel17;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    smallTextHeaderModel1 = createModel(context, () => SmallTextHeaderModel());
    userNameTextFieldModel = createModel(context, () => MyTextFieldModel());
    emailTextFieldModel = createModel(context, () => MyTextFieldModel());
    phoneNumberTextFieldModel = createModel(context, () => MyTextFieldModel());
    largeAddressTextFieldModel = createModel(context, () => MyTextFieldModel());
    smallTextHeaderModel2 = createModel(context, () => SmallTextHeaderModel());
    smallTextHeaderModel3 = createModel(context, () => SmallTextHeaderModel());
    largeTextContentModel1 =
        createModel(context, () => LargeTextContentModel());
    smallTextHeaderModel4 = createModel(context, () => SmallTextHeaderModel());
    smallTextHeaderModel5 = createModel(context, () => SmallTextHeaderModel());
    changeDateHeaderModel = createModel(context, () => SmallTextHeaderModel());
    languagesHeaderModel = createModel(context, () => SmallTextHeaderModel());
    appearenceHeaderModel = createModel(context, () => SmallTextHeaderModel());
    smallTextHeaderModel6 = createModel(context, () => SmallTextHeaderModel());
    largeTextContentModel2 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel3 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel1 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel4 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel5 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel6 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel2 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel7 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel8 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel9 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel3 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel10 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel11 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel4 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel12 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel13 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel5 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel14 =
        createModel(context, () => LargeTextContentModel());
    largeTextContentModel15 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel6 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel16 =
        createModel(context, () => LargeTextContentModel());
    largeTextHeaderModel7 = createModel(context, () => LargeTextHeaderModel());
    largeTextContentModel17 =
        createModel(context, () => LargeTextContentModel());
    userNameTextFieldModel.textControllerValidator = _formTextFieldValidator1;
    phoneNumberTextFieldModel.textControllerValidator =
        _formTextFieldValidator2;
    emailTextFieldModel.textControllerValidator = _formTextFieldValidator3;
    largeAddressTextFieldModel.textControllerValidator =
        _formTextFieldValidator4;
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel.dispose();
    smallTextHeaderModel1.dispose();
    userNameTextFieldModel.dispose();
    emailTextFieldModel.dispose();
    phoneNumberTextFieldModel.dispose();
    largeAddressTextFieldModel.dispose();
    smallTextHeaderModel2.dispose();
    emailResetPasswordFocusNode?.dispose();
    emailResetPasswordTextController?.dispose();

    smallTextHeaderModel3.dispose();
    largeTextContentModel1.dispose();
    smallTextHeaderModel4.dispose();
    smallTextHeaderModel5.dispose();
    changeDateHeaderModel.dispose();
    languagesHeaderModel.dispose();
    appearenceHeaderModel.dispose();
    smallTextHeaderModel6.dispose();
    largeTextContentModel2.dispose();
    largeTextContentModel3.dispose();
    largeTextHeaderModel1.dispose();
    largeTextContentModel4.dispose();
    largeTextContentModel5.dispose();
    largeTextContentModel6.dispose();
    largeTextHeaderModel2.dispose();
    largeTextContentModel7.dispose();
    largeTextContentModel8.dispose();
    largeTextContentModel9.dispose();
    largeTextHeaderModel3.dispose();
    largeTextContentModel10.dispose();
    largeTextContentModel11.dispose();
    largeTextHeaderModel4.dispose();
    largeTextContentModel12.dispose();
    largeTextContentModel13.dispose();
    largeTextHeaderModel5.dispose();
    largeTextContentModel14.dispose();
    largeTextContentModel15.dispose();
    largeTextHeaderModel6.dispose();
    largeTextContentModel16.dispose();
    largeTextHeaderModel7.dispose();
    largeTextContentModel17.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gjspgdwx' /* Please input first name  is re... */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's876fpf2' /* Please input Phone number   is... */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7lldvt9c' /* Please input Email  is require... */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wea1k3yv' /* Please input Address  is requi... */,
      );
    }

    return null;
  }
}
