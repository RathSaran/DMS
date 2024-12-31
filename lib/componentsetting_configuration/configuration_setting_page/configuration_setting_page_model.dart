import '/backend/supabase/supabase.dart';
import '/component/userview_component/userview_component_widget.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/componentsetting_configuration/component_add_department/component_add_department_widget.dart';
import '/componentsetting_configuration/component_add_office/component_add_office_widget.dart';
import '/componentsetting_configuration/component_configurationpopup/component_configurationpopup_widget.dart';
import '/componentsetting_configuration/component_editing/component_editing_widget.dart';
import '/componentsetting_configuration/component_minister_add/component_minister_add_widget.dart';
import '/componentsetting_configuration/component_ministry_add/component_ministry_add_widget.dart';
import '/componentsetting_configuration/component_search_filter/component_search_filter_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'configuration_setting_page_widget.dart'
    show ConfigurationSettingPageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfigurationSettingPageModel
    extends FlutterFlowModel<ConfigurationSettingPageWidget> {
  ///  Local state fields for this page.

  bool isEdit = false;

  bool isUploadProfile = true;

  bool seeMore = true;

  bool selectdepartment = true;

  bool isorganizationselect = true;

  String? clicked1;

  String? clicked2;

  String? clicked3;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for muosevt widget.
  bool muosevtHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for mouseregionhovert widget.
  bool mouseregionhovertHovered1 = false;
  // State field(s) for mouseregionhovert widget.
  bool mouseregionhovertHovered2 = false;
  // State field(s) for mouseregionhovert widget.
  bool mouseregionhovertHovered3 = false;
  // State field(s) for muosevt widget.
  bool muosevtHovered2 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for mouseregionhovert widget.
  bool mouseregionhovertHovered4 = false;
  // State field(s) for mouseregionhovert widget.
  bool mouseregionhovertHovered5 = false;
  // State field(s) for mouseregionhovert widget.
  bool mouseregionhovertHovered6 = false;
  // State field(s) for muosevt widget.
  bool muosevtHovered3 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for muosevt widget.
  bool muosevtHovered4 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for userview_component component.
  late UserviewComponentModel userviewComponentModel1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Model for userview_component component.
  late UserviewComponentModel userviewComponentModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // Model for userview_component component.
  late UserviewComponentModel userviewComponentModel3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // Model for userview_component component.
  late UserviewComponentModel userviewComponentModel4;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    userviewComponentModel1 =
        createModel(context, () => UserviewComponentModel());
    userviewComponentModel2 =
        createModel(context, () => UserviewComponentModel());
    userviewComponentModel3 =
        createModel(context, () => UserviewComponentModel());
    userviewComponentModel4 =
        createModel(context, () => UserviewComponentModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    userviewComponentModel1.dispose();
    userviewComponentModel2.dispose();
    userviewComponentModel3.dispose();
    userviewComponentModel4.dispose();
  }
}
