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
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_setting_page_model.dart';
export 'account_setting_page_model.dart';

class AccountSettingPageWidget extends StatefulWidget {
  const AccountSettingPageWidget({
    super.key,
    this.customDateFormat,
  });

  final List<String>? customDateFormat;

  @override
  State<AccountSettingPageWidget> createState() =>
      _AccountSettingPageWidgetState();
}

class _AccountSettingPageWidgetState extends State<AccountSettingPageWidget>
    with TickerProviderStateMixin {
  late AccountSettingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountSettingPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'account_setting_page'});
    _model.emailResetPasswordTextController ??= TextEditingController();
    _model.emailResetPasswordFocusNode ??= FocusNode();

    _model.switchValue1 = true;
    _model.switchValue2 = () {
      if ((FFAppState().enableNotification == true) &&
          (FFAppState().isNotifications == true)) {
        return true;
      } else if ((FFAppState().enableNotification == false) &&
          (FFAppState().isNotifications == false)) {
        return false;
      } else {
        return false;
      }
    }();
    _model.switchValue3 = true;
    _model.switchValue4 = false;
    _model.switchValue5 = true;
    _model.switchValue6 = false;
    _model.switchValue7 = false;
    _model.switchValue8 = true;
    _model.switchValue9 = false;
    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            wrapWithModel(
              model: _model.sidebarModel,
              updateCallback: () => safeSetState(() {}),
              child: SidebarWidget(
                iconOne: Icon(
                  Icons.dashboard_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconTwo: Icon(
                  Icons.done_all,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconThree: Icon(
                  Icons.stacked_bar_chart_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                iconFour: Icon(
                  Icons.settings_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                ),
                colorBgOne: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgTwo: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgThree: FlutterFlowTheme.of(context).secondaryBackground,
                colorBgFour: FlutterFlowTheme.of(context).primaryBackground,
                textOne: FlutterFlowTheme.of(context).secondaryText,
                textTwo: FlutterFlowTheme.of(context).secondaryText,
                textThree: FlutterFlowTheme.of(context).secondaryText,
                textFour: FlutterFlowTheme.of(context).primaryText,
                iconFive: Icon(
                  Icons.folder_open_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                colorBgFive: FlutterFlowTheme.of(context).secondaryBackground,
                textFive: FlutterFlowTheme.of(context).secondaryText,
                bgColor6: FlutterFlowTheme.of(context).secondaryBackground,
                icon6: Icon(
                  Icons.supervisor_account_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                text6: FlutterFlowTheme.of(context).secondaryText,
              ),
            ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 1370.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.navigateBackPageHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavigateBackPageHeaderWidget(
                      previousPage: FFLocalizations.of(context).getText(
                        '722ntm86' /* settings */,
                      ),
                      title: FFLocalizations.of(context).getText(
                        'dl2fwh6g' /* Account */,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder<List<UsersRow>>(
                      future: UsersTable().querySingleRow(
                        queryFn: (q) => q.eqOrNull(
                          'id',
                          currentUserUid,
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<UsersRow> accountViewUsersRowList = snapshot.data!;

                        final accountViewUsersRow =
                            accountViewUsersRowList.isNotEmpty
                                ? accountViewUsersRowList.first
                                : null;

                        return ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '325hoyn4' /* Profile */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .smallTextHeaderModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        SmallTextHeaderWidget(
                                                      title: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3ovj18g2' /* Profile Details */,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (_model.isEdit == false)
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'ACCOUNT_SETTING_EDIT_BTN_ON_TAP');
                                                      if (_model.isEdit) {
                                                        _model.isEdit = true;
                                                        safeSetState(() {});
                                                      } else {
                                                        _model.isEdit = true;
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'zu7izux2' /* Edit */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 100.0,
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      elevation: 1.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                if (_model.isEdit == true)
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'ACCOUNT_SETTING_CANCEL_BTN_ON_TAP');
                                                      if (_model.isEdit) {
                                                        _model.isEdit = false;
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '0p1ij7ql' /* Cancel */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 100.0,
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      elevation: 1.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                if (_model.isEdit == true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'ACCOUNT_SETTING_SAVE_BTN_ON_TAP');
                                                        if (_model.isEdit) {
                                                          _model.isEdit = false;
                                                          safeSetState(() {});
                                                          await UsersTable()
                                                              .update(
                                                            data: {
                                                              'id':
                                                                  currentUserUid,
                                                              'created_at':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      getCurrentTimestamp),
                                                              'phone_number':
                                                                  accountViewUsersRow
                                                                      ?.phoneNumber,
                                                              'gender':
                                                                  accountViewUsersRow
                                                                      ?.gender,
                                                              'address':
                                                                  accountViewUsersRow
                                                                      ?.address,
                                                              'role':
                                                                  accountViewUsersRow
                                                                      ?.role,
                                                              'profile_url': _model
                                                                  .uploadedFileUrl,
                                                              'email': _model
                                                                  .emailTextFieldModel
                                                                  .textController
                                                                  .text,
                                                              'active': true,
                                                              'username': _model
                                                                  .userNameTextFieldModel
                                                                  .textController
                                                                  .text,
                                                            },
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                              'id',
                                                              currentUserUid,
                                                            ),
                                                          );
                                                          FFAppState()
                                                                  .profileUrl =
                                                              _model
                                                                  .uploadedFileUrl;
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '27pte8ta' /* Save */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 100.0,
                                                        height: 50.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                        elevation: 1.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((_model.isEdit ==
                                                          false) &&
                                                      (_model.isUploadProfile ==
                                                          true))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  15.0,
                                                                  15.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (accountViewUsersRow
                                                                          ?.profileUrl !=
                                                                      null &&
                                                                  accountViewUsersRow
                                                                          ?.profileUrl !=
                                                                      '') {
                                                                return accountViewUsersRow
                                                                    ?.profileUrl;
                                                              } else if (accountViewUsersRow
                                                                          ?.profileUrl ==
                                                                      null ||
                                                                  accountViewUsersRow
                                                                          ?.profileUrl ==
                                                                      '') {
                                                                return 'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=';
                                                              } else {
                                                                return 'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=';
                                                              }
                                                            }(),
                                                            'https://cdn-icons-png.flaticon.com/512/9203/9203764.png',
                                                          ),
                                                          width: 80.0,
                                                          height: 80.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  if ((_model.isUploadProfile ==
                                                          false) &&
                                                      (_model.isEdit == false))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  20.0,
                                                                  20.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            _model
                                                                .uploadedFileUrl,
                                                            'https://cdn-icons-png.flaticon.com/512/9203/9203764.png',
                                                          ),
                                                          width: 80.0,
                                                          height: 80.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.isEdit == true)
                                                    Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      children: [
                                                        if (_model
                                                                .isUploadProfile ==
                                                            false)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .uploadedFileUrl,
                                                                  'https://cdn-icons-png.flaticon.com/512/9203/9203764.png',
                                                                ),
                                                                width: 80.0,
                                                                height: 80.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        if (_model
                                                                .isUploadProfile ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        20.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderRadius:
                                                                  40.0,
                                                              buttonSize: 85.0,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              icon: Icon(
                                                                Icons
                                                                    .camera_alt,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'ACCOUNT_SETTING_camera_alt_ICN_ON_TAP');
                                                                if (_model
                                                                    .isUploadProfile) {
                                                                  final selectedMedia =
                                                                      await selectMediaWithSourceBottomSheet(
                                                                    context:
                                                                        context,
                                                                    storageFolderPath:
                                                                        'profile_pictures',
                                                                    allowPhoto:
                                                                        true,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    safeSetState(() =>
                                                                        _model.isDataUploading =
                                                                            true);
                                                                    var selectedUploadedFiles =
                                                                        <FFUploadedFile>[];

                                                                    var downloadUrls =
                                                                        <String>[];
                                                                    try {
                                                                      showUploadMessage(
                                                                        context,
                                                                        'Uploading file...',
                                                                        showLoading:
                                                                            true,
                                                                      );
                                                                      selectedUploadedFiles = selectedMedia
                                                                          .map((m) => FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();

                                                                      downloadUrls =
                                                                          await uploadSupabaseStorageFiles(
                                                                        bucketName:
                                                                            'dms_storage',
                                                                        selectedFiles:
                                                                            selectedMedia,
                                                                      );
                                                                    } finally {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .hideCurrentSnackBar();
                                                                      _model.isDataUploading =
                                                                          false;
                                                                    }
                                                                    if (selectedUploadedFiles.length ==
                                                                            selectedMedia
                                                                                .length &&
                                                                        downloadUrls.length ==
                                                                            selectedMedia.length) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.uploadedLocalFile =
                                                                            selectedUploadedFiles.first;
                                                                        _model.uploadedFileUrl =
                                                                            downloadUrls.first;
                                                                      });
                                                                      showUploadMessage(
                                                                          context,
                                                                          'Success!');
                                                                    } else {
                                                                      safeSetState(
                                                                          () {});
                                                                      showUploadMessage(
                                                                          context,
                                                                          'Failed to upload data');
                                                                      return;
                                                                    }
                                                                  }

                                                                  _model.isUploadProfile =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Upload profile success',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                } else {
                                                                  _model.isUploadProfile =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Upload profile failed!',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                accountViewUsersRow
                                                                    ?.username,
                                                                'user01',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            accountViewUsersRow
                                                                ?.email,
                                                            'Email',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Form(
                                              key: _model.formKey,
                                              autovalidateMode:
                                                  AutovalidateMode.always,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Wrap(
                                                        spacing: 15.0,
                                                        runSpacing: 0.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Container(
                                                            width: 545.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .userNameTextFieldModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  MyTextFieldWidget(
                                                                xLabel: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'cd3eovcr' /* UserName */,
                                                                ),
                                                                isRequired:
                                                                    _model.isEdit ==
                                                                            true
                                                                        ? '  *'
                                                                        : '  ',
                                                                initialValue: currentUserUid ==
                                                                        accountViewUsersRow
                                                                            ?.id
                                                                    ? valueOrDefault<
                                                                        String>(
                                                                        accountViewUsersRow
                                                                            ?.username,
                                                                        'user01',
                                                                      )
                                                                    : 'First_Name',
                                                                viewOnly: _model
                                                                        .isEdit ==
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
                                                                      () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 5.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 10.0;
                                                                        } else {
                                                                          return 0.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    ),
                                                                    0.0,
                                                                    0.0),
                                                            child: Container(
                                                              width: 545.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                FFLocalizations.of(context).getText(
                                                                              'xsuglobf' /* Gender */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          TextSpan(
                                                                            text: _model.isEdit == true
                                                                                ? '  *'
                                                                                : '  ',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                            .largeGenderDropDownValueController ??=
                                                                        FormFieldController<
                                                                            String>(
                                                                      _model.largeGenderDropDownValue ??=
                                                                          accountViewUsersRow
                                                                              ?.gender,
                                                                    ),
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'dn8xhixz' /* Male */,
                                                                      ),
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'lc8qzetx' /* Female */,
                                                                      ),
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'oq1w6ik8' /* Others */,
                                                                      )
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        safeSetState(() =>
                                                                            _model.largeGenderDropDownValue =
                                                                                val),
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        50.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'vhsako4z' /* Select Gender */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    elevation:
                                                                        4.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderWidth:
                                                                        2.0,
                                                                    borderRadius:
                                                                        10.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    disabled:
                                                                        _model.isEdit ==
                                                                            false,
                                                                    isOverButton:
                                                                        false,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Wrap(
                                                        spacing: 15.0,
                                                        runSpacing: 0.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Container(
                                                            width: 545.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .emailTextFieldModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  MyTextFieldWidget(
                                                                xLabel: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'zcb86j63' /* Email */,
                                                                ),
                                                                isRequired:
                                                                    _model.isEdit ==
                                                                            true
                                                                        ? '  *'
                                                                        : '  ',
                                                                initialValue:
                                                                    accountViewUsersRow
                                                                        ?.email,
                                                                viewOnly: _model
                                                                        .isEdit ==
                                                                    false,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
                                                                      () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 5.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 10.0;
                                                                        } else {
                                                                          return 0.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    ),
                                                                    0.0,
                                                                    0.0),
                                                            child: Container(
                                                              width: 545.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Container(
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .phoneNumberTextFieldModel,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      MyTextFieldWidget(
                                                                    xLabel: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'gs0a80cx' /* Phone Number */,
                                                                    ),
                                                                    isRequired: _model.isEdit ==
                                                                            true
                                                                        ? '  *'
                                                                        : '  ',
                                                                    initialValue:
                                                                        accountViewUsersRow
                                                                            ?.phoneNumber,
                                                                    viewOnly:
                                                                        _model.isEdit ==
                                                                            false,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 545.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 545.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 1090.0;
                                                          } else {
                                                            return 1105.0;
                                                          }
                                                        }(),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .largeAddressTextFieldModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              MyTextFieldWidget(
                                                            xLabel:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'gcr9esk9' /* Address */,
                                                            ),
                                                            isRequired:
                                                                _model.isEdit ==
                                                                        true
                                                                    ? '  *'
                                                                    : '  ',
                                                            initialValue:
                                                                accountViewUsersRow
                                                                    ?.address,
                                                            viewOnly:
                                                                _model.isEdit ==
                                                                    false,
                                                            maxLine: 4,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'ACCOUNT_SETTING_LOG_OUT_BTN_ON_TAP');
                                                            GoRouter.of(context)
                                                                .prepareAuthEvent();
                                                            await authManager
                                                                .signOut();
                                                            GoRouter.of(context)
                                                                .clearRedirectLocation();

                                                            context.goNamedAuth(
                                                                'login_page',
                                                                context
                                                                    .mounted);
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'amiami79' /* Log out */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .dangerButton,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 1.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'w4mgdrr0' /* Security */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.password_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 26.0,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .smallTextHeaderModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SmallTextHeaderWidget(
                                                              title: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '2h9br091' /* Reset Password */,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '69788c2j' /* Reset your password by change ... */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  if (_model.isChangePassword ==
                                                      true)
                                                    FlutterFlowIconButton(
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      icon: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 16.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'ACCOUNT_SETTING_arrow_forward_ios_ICN_ON');
                                                        if (_model
                                                            .isChangePassword) {
                                                          _model.isChangePassword =
                                                              false;
                                                          safeSetState(() {});
                                                        } else {
                                                          _model.isChangePassword =
                                                              true;
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                    ),
                                                  if (_model.isChangePassword ==
                                                      false)
                                                    FlutterFlowIconButton(
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 26.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'ACCOUNT_SETTING_keyboard_arrow_down_ICN_');
                                                        if (_model
                                                            .isChangePassword) {
                                                          _model.isChangePassword =
                                                              false;
                                                          safeSetState(() {});
                                                        } else {
                                                          _model.isChangePassword =
                                                              true;
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                    ),
                                                ],
                                              ),
                                              if (_model.isChangePassword ==
                                                  false)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          'o5yeyzk6' /* Email */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          'd7quc568' /*   * */,
                                                                        ),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              TextFormField(
                                                                controller: _model
                                                                    .emailResetPasswordTextController,
                                                                focusNode: _model
                                                                    .emailResetPasswordFocusNode,
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  contentPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .emailResetPasswordTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'ACCOUNT_SETTING_NEXT_BTN_ON_TAP');
                                                            if (_model
                                                                .emailResetPasswordTextController
                                                                .text
                                                                .isEmpty) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Email required!',
                                                                  ),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            await authManager
                                                                .resetPassword(
                                                              email: _model
                                                                  .emailResetPasswordTextController
                                                                  .text,
                                                              context: context,
                                                            );
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'ln8cih0w' /* Next */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 1.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.security,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .smallTextHeaderModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SmallTextHeaderWidget(
                                                            title: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'qk2dowq5' /* Two factor authentication */,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .largeTextContentModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                LargeTextContentWidget(
                                                              title: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'sj3vaugx' /* Enable two factor authenticati... */,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue1!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue1 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  's9a2xjtm' /* Notifications */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: wrapWithModel(
                                          model: _model.smallTextHeaderModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SmallTextHeaderWidget(
                                            title: FFLocalizations.of(context)
                                                .getText(
                                              '407kfkx8' /* Enable or disable email notifi... */,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.notifications_active,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'fm40w02o' /* Notifications */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gw6komo5' /* Enable or disable notification... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue2!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue2 =
                                                                newValue!);
                                                        if (newValue!) {
                                                          logFirebaseEvent(
                                                              'ACCOUNT_SETTING_Switch_rsiin7w6_ON_TOGGL');
                                                          FFAppState()
                                                                  .enableNotification =
                                                              true;
                                                          safeSetState(() {});
                                                          await UsersTable()
                                                              .update(
                                                            data: {
                                                              'id':
                                                                  currentUserUid,
                                                              'created_at':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      getCurrentTimestamp),
                                                              'phone_number':
                                                                  accountViewUsersRow
                                                                      ?.phoneNumber,
                                                              'gender':
                                                                  accountViewUsersRow
                                                                      ?.gender,
                                                              'address':
                                                                  accountViewUsersRow
                                                                      ?.address,
                                                              'role':
                                                                  accountViewUsersRow
                                                                      ?.role,
                                                              'email': _model
                                                                  .emailTextFieldModel
                                                                  .textController
                                                                  .text,
                                                              'active': true,
                                                              'username': _model
                                                                  .userNameTextFieldModel
                                                                  .textController
                                                                  .text,
                                                              'enable_notification':
                                                                  true,
                                                            },
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                              'id',
                                                              currentUserUid,
                                                            ),
                                                          );
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Notification is enable.',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        } else {
                                                          logFirebaseEvent(
                                                              'ACCOUNT_SETTING_Switch_rsiin7w6_ON_TOGGL');
                                                          FFAppState()
                                                                  .enableNotification =
                                                              false;
                                                          safeSetState(() {});
                                                          await UsersTable()
                                                              .update(
                                                            data: {
                                                              'id':
                                                                  currentUserUid,
                                                              'created_at':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      getCurrentTimestamp),
                                                              'phone_number':
                                                                  accountViewUsersRow
                                                                      ?.phoneNumber,
                                                              'gender':
                                                                  accountViewUsersRow
                                                                      ?.gender,
                                                              'address':
                                                                  accountViewUsersRow
                                                                      ?.address,
                                                              'role':
                                                                  accountViewUsersRow
                                                                      ?.role,
                                                              'email': _model
                                                                  .emailTextFieldModel
                                                                  .textController
                                                                  .text,
                                                              'active': true,
                                                              'username': _model
                                                                  .userNameTextFieldModel
                                                                  .textController
                                                                  .text,
                                                              'enable_notification':
                                                                  false,
                                                            },
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                              'id',
                                                              currentUserUid,
                                                            ),
                                                          );
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Notification is disable.',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .dangerButton,
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.invision,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 26.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'kzk3qz2s' /* Invite */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'bvw4vmj7' /* You are invited to a team */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue3!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue3 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.share_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mrdpoxs0' /* Share */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'j5kh80w4' /* Someone has individually share... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue4!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue4 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.comment_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9iger0tm' /* Comments */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'zyh5tign' /* Someone has mentioned you in a... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue5!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue5 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.ballot_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jkvzcf70' /* Request Access */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'wxg35vkp' /* Someone has requested access f... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue6!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue6 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .admin_panel_settings_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7acanz7e' /* Admin */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'nsjrzbyw' /* Your team admin has accessed y... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue7!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue7 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'u4utjqjx' /* Enable or disable telegram not... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Container(
                                          width: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.all_inclusive_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .smallTextHeaderModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SmallTextHeaderWidget(
                                                            title: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'tjs5hkhx' /* Telegram Notification Function... */,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'qggk2n0d' /* All access. */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Switch.adaptive(
                                                      value:
                                                          _model.switchValue8!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue8 =
                                                                newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 60.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Icon(
                                                  Icons.view_in_ar,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 26.0,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7c8kd2ty' /* Telegram Notification Alerts */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gxx36mh8' /* Only view */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Switch.adaptive(
                                                    value: _model.switchValue9!,
                                                    onChanged:
                                                        (newValue) async {
                                                      safeSetState(() =>
                                                          _model.switchValue9 =
                                                              newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fj0r5dw6' /* Preferences */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.changeDateHeaderModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SmallTextHeaderWidget(
                                            title: FFLocalizations.of(context)
                                                .getText(
                                              'xhszwqxx' /* Change Date  Format */,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 15.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '0fsrxarj' /* Select the date format to be u... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        child: Builder(
                                          builder: (context) =>
                                              FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController ??=
                                                FormFieldController<String>(
                                              _model.dropDownValue ??=
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'c7dmdnvc' /* DD/mm/yyyy (22/03/2024) */,
                                              ),
                                            ),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'f173wwcm' /* Custom */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '76yz0afd' /* DD/mm/yyyy (22/03/2024) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tjinkkox' /* yy/MM/dd (24/03/22) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x5ep8mbw' /* MM/dd/yy (03/22/24) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                't3898gs0' /* M/d/yy (3/22/24) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '34x3o9om' /* MM-dd-yy  (03-22-24) */,
                                              )
                                            ],
                                            onChanged: (val) async {
                                              safeSetState(() =>
                                                  _model.dropDownValue = val);
                                              logFirebaseEvent(
                                                  'ACCOUNT_SETTING_DropDown_exso2nd5_ON_FOR');
                                              if (_model.dropDownValue ==
                                                  'Custom') {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child:
                                                          CustomDateFormatWidget(),
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                            width: double.infinity,
                                            height: 50.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      letterSpacing: 0.0,
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '3frsl50j' /* Select... */,
                                            ),
                                            searchHintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'x7ptbh69' /* Search... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 10.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: true,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x2B202529),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.languagesHeaderModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SmallTextHeaderWidget(
                                            title: FFLocalizations.of(context)
                                                .getText(
                                              'zn7iww1p' /* Languages */,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 15.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ig6mw6fi' /* Choose languages base on your ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      FlutterFlowLanguageSelector(
                                        width: double.infinity,
                                        height: 50.0,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        dropdownIconColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        borderRadius: 10.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        hideFlags: true,
                                        flagSize: 24.0,
                                        flagTextGap: 8.0,
                                        currentLanguage:
                                            FFLocalizations.of(context)
                                                .languageCode,
                                        languages: FFLocalizations.languages(),
                                        onChanged: (lang) =>
                                            setAppLanguage(context, lang),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.appearenceHeaderModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SmallTextHeaderWidget(
                                            title: FFLocalizations.of(context)
                                                .getText(
                                              '94k3ewqd' /* Appearances */,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fp8n9i9c' /* Update the theme of your appli... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF606A85),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 15.0),
                                              child: Wrap(
                                                spacing: 15.0,
                                                runSpacing: 15.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    width: 322.0,
                                                    child: Stack(
                                                      children: [
                                                        AnimatedContainer(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  150),
                                                          curve:
                                                              Curves.easeInOut,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Color(
                                                                    0x4D9489F5)
                                                                : Color(
                                                                    0xFFF1F4F8),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            border: Border.all(
                                                              color: Theme.of(context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .dark
                                                                  ? Color(
                                                                      0xFF6F61EF)
                                                                  : Color(
                                                                      0xFFE5E7EB),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'ACCOUNT_SETTING_Container_nfr0kdpx_ON_TA');
                                                                setDarkModeSetting(
                                                                    context,
                                                                    ThemeMode
                                                                        .dark);
                                                              },
                                                              child: Container(
                                                                width: 310.0,
                                                                height: 230.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF1B1D27),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          12.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'fvcjnb2m' /* Dark Mode */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      color: Colors.white,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            if (Theme.of(context).brightness ==
                                                                                Brightness.dark)
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, -1.0),
                                                                                child: Icon(
                                                                                  Icons.check_circle_rounded,
                                                                                  color: Color(0xFF6F61EF),
                                                                                  size: 32.0,
                                                                                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation1']!),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            110.0,
                                                                        height:
                                                                            160.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF2A3137),
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(0.0),
                                                                            bottomRight:
                                                                                Radius.circular(0.0),
                                                                            topLeft:
                                                                                Radius.circular(8.0),
                                                                            topRight:
                                                                                Radius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              12.0,
                                                                              4.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 70.0,
                                                                                      height: 20.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xD81D2429),
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 16.0,
                                                                                      height: 16.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFF6F61EF),
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 44.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xD81D2429),
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 44.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xD81D2429),
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 322.0,
                                                    child: Stack(
                                                      children: [
                                                        AnimatedContainer(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  150),
                                                          curve:
                                                              Curves.easeInOut,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .light
                                                                ? Color(
                                                                    0x4D9489F5)
                                                                : Color(
                                                                    0xFFF1F4F8),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            border: Border.all(
                                                              color: Theme.of(context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .light
                                                                  ? Color(
                                                                      0xFF6F61EF)
                                                                  : Color(
                                                                      0xFFE5E7EB),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'ACCOUNT_SETTING_Container_qfbuosyx_ON_TA');
                                                                setDarkModeSetting(
                                                                    context,
                                                                    ThemeMode
                                                                        .light);
                                                              },
                                                              child: Container(
                                                                width: 310.0,
                                                                height: 230.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          12.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'g818gi73' /* Light Mode */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      color: Color(0xFF1B1D27),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            if (Theme.of(context).brightness ==
                                                                                Brightness.light)
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, -1.0),
                                                                                child: Icon(
                                                                                  Icons.check_circle_rounded,
                                                                                  color: Color(0xFF6F61EF),
                                                                                  size: 32.0,
                                                                                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation2']!),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            110.0,
                                                                        height:
                                                                            160.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFDBE2E7),
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(0.0),
                                                                            bottomRight:
                                                                                Radius.circular(0.0),
                                                                            topLeft:
                                                                                Radius.circular(8.0),
                                                                            topRight:
                                                                                Radius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              12.0,
                                                                              4.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 70.0,
                                                                                      height: 20.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 16.0,
                                                                                      height: 16.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFF6F61EF),
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 44.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 44.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'w1yyjw05' /* Terms of Service and Privacy P... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          wrapWithModel(
                                            model: _model.smallTextHeaderModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SmallTextHeaderWidget(
                                              title: FFLocalizations.of(context)
                                                  .getText(
                                                'jrmbllh4' /* Last updated: 19/09/2024 */,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'ACCOUNT_SETTING_Text_t0vnr282_ON_TAP');
                                              if (_model.seeMore) {
                                                _model.seeMore = false;
                                                safeSetState(() {});
                                              } else {
                                                _model.seeMore = true;
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Text(
                                              () {
                                                if (_model.seeMore == true) {
                                                  return FFLocalizations.of(
                                                          context)
                                                      .getVariableText(
                                                    enText: 'See More',
                                                    kmText: 'មើលបន្ថែម',
                                                  );
                                                } else if (_model.seeMore ==
                                                    false) {
                                                  return FFLocalizations.of(
                                                          context)
                                                      .getVariableText(
                                                    enText: 'See Less',
                                                    kmText: 'មើលតិច​ជាងនេះ',
                                                  );
                                                } else {
                                                  return FFLocalizations.of(
                                                          context)
                                                      .getVariableText(
                                                    enText: 'None',
                                                    kmText: 'មិនមាន',
                                                  );
                                                }
                                              }(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.largeTextContentModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LargeTextContentWidget(
                                            title: FFLocalizations.of(context)
                                                .getText(
                                              'wyblaehd' /* Welcome to DMS (Document manag... */,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.largeTextContentModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LargeTextContentWidget(
                                            title: FFLocalizations.of(context)
                                                .getText(
                                              'fuqjxg3d' /* By accessing or using the DMS,... */,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (_model.seeMore == false)
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '0xbtzwq7' /* 1. Use of the Service */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '9ck645ah' /* 1.1. You are responsible for e... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.largeTextContentModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: LargeTextContentWidget(
                                                title:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '6j53h68a' /* 1.2. You agree not to use the ... */,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '68akepc3' /* 1.3. You retain ownership of a... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'onwfrab7' /* 2. Account Registration and Se... */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '1ezevlb5' /* 2.1. You must register for an ... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'emy80j3r' /* 2.2. You are responsible for s... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel9,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'u7uz2uoy' /* 2.3. You must notify us immedi... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'nr9w8hqf' /* 3. Fees and Payment */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel10,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'qhntt0zx' /* 3.1. The DMS may offer free or... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel11,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '68lbvnwe' /* 3.2. All fees are non-refundab... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'qba8k64t' /* 4. Termination */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel12,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'vfktqviy' /* 4.1. You may terminate your ac... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel13,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '1jjomf0g' /* 4.2. We reserve the right to s... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '7c8ev92j' /* 5. Liability and Disclaimers */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel14,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'r5gefphe' /* 5.1. The DMS is provided "as i... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel15,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'mkt7nyg2' /* 5.2. We will not be liable for... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '86hack4p' /* 6. Changes to the Terms */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel16,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'tz6b9ixf' /* We reserve the right to update... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextHeaderModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextHeaderWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'n5imwfdi' /* 7. Governing Law */,
                                                  ),
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .largeTextContentModel17,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LargeTextContentWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ng5vath9' /* These Terms will be governed b... */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
