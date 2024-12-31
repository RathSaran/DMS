import '/auth/base_auth_user_provider.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'home_page20241004134500_widget.dart' show HomePage20241004134500Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage20241004134500Model
    extends FlutterFlowModel<HomePage20241004134500Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in home_page_20241004134500 widget.
  List<UsersRow>? userInfor;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for PageHeader component.
  late PageHeaderModel pageHeaderModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;
  // State field(s) for RatingBar widget.
  double? ratingBarValue4;
  // State field(s) for RatingBar widget.
  double? ratingBarValue5;
  // State field(s) for RatingBar widget.
  double? ratingBarValue6;
  // State field(s) for RatingBar widget.
  double? ratingBarValue7;
  // State field(s) for RatingBar widget.
  double? ratingBarValue8;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue9;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    pageHeaderModel = createModel(context, () => PageHeaderModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    pageHeaderModel.dispose();
  }
}
