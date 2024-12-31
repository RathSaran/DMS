import '/auth/base_auth_user_provider.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/page_header/page_header_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in home_page widget.
  List<UsersRow>? userIn;
  // Stores action output result for [Backend Call - Query Rows] action in home_page widget.
  List<NotificationPermissionsRow>? notificate;
  // Stores action output result for [Backend Call - Query Rows] action in home_page widget.
  List<WorkflowSummaryRow>? homeSummary;
  // Stores action output result for [Backend Call - Query Rows] action in home_page widget.
  List<UserNotificationRow>? countNotifications;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for PageHeader component.
  late PageHeaderModel pageHeaderModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue7;
  // State field(s) for RatingBar widget.
  double? ratingBarValue8;
  // State field(s) for RatingBar widget.
  double? ratingBarValue9;
  // State field(s) for RatingBar widget.
  double? ratingBarValue10;
  // State field(s) for RatingBar widget.
  double? ratingBarValue11;
  // State field(s) for RatingBar widget.
  double? ratingBarValue12;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

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
