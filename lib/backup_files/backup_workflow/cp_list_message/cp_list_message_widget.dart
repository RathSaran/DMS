import '/dms/work_flow/component_page_workflow/component_sign_batch_inbox_action/component_sign_batch_inbox_action_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_list_message_model.dart';
export 'cp_list_message_model.dart';

class CpListMessageWidget extends StatefulWidget {
  const CpListMessageWidget({super.key});

  @override
  State<CpListMessageWidget> createState() => _CpListMessageWidgetState();
}

class _CpListMessageWidgetState extends State<CpListMessageWidget> {
  late CpListMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpListMessageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      unselectedWidgetColor:
                          FlutterFlowTheme.of(context).secondaryText,
                    ),
                    child: Checkbox(
                      value: _model.cbTrashSAValue ??= false,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.cbTrashSAValue = newValue!);
                      },
                      side: BorderSide(
                        width: 2,
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                    ),
                  ),
                  Builder(
                    builder: (context) => FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 8.0,
                      buttonSize: 46.0,
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: _model.cbTrashSAValue == true
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'CP_LIST_MESSAGE_more_vert_outlined_ICN_O');
                        if (_model.cbTrashSAValue == true) {
                          await showAlignedDialog(
                            barrierColor: Colors.transparent,
                            context: context,
                            isGlobal: false,
                            avoidOverflow: true,
                            targetAnchor: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            followerAnchor: AlignmentDirectional(-1.0, 0.0)
                                .resolve(Directionality.of(context)),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: ComponentSignBatchInboxActionWidget(),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2dowvsqx' /* Receive No */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'uya81s7o' /* Document Name */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'uivc1mxn' /* From */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'yemidjnz' /* Receive Date */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'eum0f8rp' /* Validate */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bidyfcmq' /* Status */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.settings_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 26.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                                offset: Offset(
                                  0.0,
                                  1.0,
                                ),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.cbTrashChildValue ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.cbTrashChildValue = newValue!);
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 46.0,
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: 105.0,
                                    decoration: BoxDecoration(),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'zv1g0c8o' /* NA-1 */,
                                      ),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'j2bxtja0' /* Report request permission */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 8.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            child: Image.network(
                                              'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                              width: 32.0,
                                              height: 32.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7zysh4py' /* Thlang Penglay */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tvt2ueur' /* .UAT */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
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
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'a6kyy20z' /* 01/09/2024 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'a9j61m12' /* 20/09/2024 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: 110.0,
                                    constraints: BoxConstraints(
                                      maxWidth: 110.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(10.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ibnhu5q8' /* Completed */,
                                          ),
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 26.0,
                                  height: 26.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 400.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://cdni.iconscout.com/illustration/premium/thumb/data-search-not-found-illustration-download-in-svg-png-gif-file-formats--404-pack-files-folders-illustrations-6109669.png?f=webp',
                                width: 250.0,
                                height: 250.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '1burh1ir' /* You don't have any message! */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
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
        ].addToStart(SizedBox(height: 5.0)),
      ),
    );
  }
}
