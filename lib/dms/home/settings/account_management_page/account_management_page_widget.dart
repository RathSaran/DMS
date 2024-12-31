import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/pagination_panel/pagination_panel_widget.dart';
import '/dms/home/settings/componenets/account_management_details/account_management_details_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_management_page_model.dart';
export 'account_management_page_model.dart';

class AccountManagementPageWidget extends StatefulWidget {
  const AccountManagementPageWidget({
    super.key,
    this.customDateFormat,
  });

  final List<String>? customDateFormat;

  @override
  State<AccountManagementPageWidget> createState() =>
      _AccountManagementPageWidgetState();
}

class _AccountManagementPageWidgetState
    extends State<AccountManagementPageWidget> {
  late AccountManagementPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountManagementPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'account_management_page'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                        'n4ytj074' /* settings */,
                      ),
                      title: 'Admin',
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 15.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'ACCOUNT_MANAGEMENT_ADD_BTN_ON_TAP');
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: AccountManagementDetailsWidget(
                                    flag: Flag.add,
                                  ),
                                );
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'm9lieffx' /* Add */,
                          ),
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 1.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'fm6kv8yz' /* No */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'qii33ffv' /* Username */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'bhuwzslj' /* Email */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'pz26qg1y' /* Role */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ce630dzr' /* Departments */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'z0p5hu1m' /* Address */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '4r9n8vqp' /* Action */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FutureBuilder<List<UsersRow>>(
                              future: UsersTable().queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'role',
                                      2,
                                    )
                                    .eqOrNull(
                                      'active',
                                      true,
                                    )
                                    .neqOrNull(
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<UsersRow> listViewUsersRowList =
                                    snapshot.data!;

                                return ListView.builder(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    15.0,
                                    0,
                                    0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewUsersRowList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewUsersRow =
                                        listViewUsersRowList[listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                formatNumber(
                                                  listViewIndex,
                                                  formatType: FormatType.custom,
                                                  format: '#',
                                                  locale: '',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewUsersRow.username,
                                                  'user01',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewUsersRow.email,
                                                  'user01@gmail.com',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                listViewUsersRow.role == 1
                                                    ? 'General'
                                                    : 'Admin',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewUsersRow.departments,
                                                  '-',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewUsersRow.address,
                                                  'pp,468st',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Builder(
                                                    builder: (context) =>
                                                        FlutterFlowIconButton(
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      icon: Icon(
                                                        Icons
                                                            .mode_edit_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'ACCOUNT_MANAGEMENT_mode_edit_outlined_IC');
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  AccountManagementDetailsWidget(
                                                                userInfo:
                                                                    listViewUsersRow,
                                                                flag: Flag.edit,
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.paginationPanelModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PaginationPanelWidget(),
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
