import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/dms/documents/component_of_documents/component_acivity_documents/component_acivity_documents_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_batch_inbox_action/component_sign_batch_inbox_action_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_empty_data/component_sign_empty_data_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_inbox_action/component_sign_inbox_action_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_message_column/component_sign_message_column_widget.dart';
import '/dms/work_flow/component_page_workflow/component_sign_priority/component_sign_priority_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_d_t_send_model.dart';
export 'component_sign_d_t_send_model.dart';

class ComponentSignDTSendWidget extends StatefulWidget {
  const ComponentSignDTSendWidget({
    super.key,
    int? currentTabbar,
  }) : this.currentTabbar = currentTabbar ?? 0;

  final int currentTabbar;

  @override
  State<ComponentSignDTSendWidget> createState() =>
      _ComponentSignDTSendWidgetState();
}

class _ComponentSignDTSendWidgetState extends State<ComponentSignDTSendWidget> {
  late ComponentSignDTSendModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignDTSendModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMPONENT_SIGN_D_T_SEND_ComponentSign_DT');
      _model.queryFiles = await FolderTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'type',
              'file',
            )
            .eqOrNull(
              'sent_by',
              currentUserUid,
            )
            .eqOrNull(
              'trash',
              false,
            )
            .lteOrNull(
              'tabs',
              2,
            )
            .order('sent_date'),
      );
    });

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
      child: Builder(
        builder: (context) {
          final messageData = _model.queryFiles?.toList() ?? [];
          if (messageData.isEmpty) {
            return Center(
              child: ComponentSignEmptyDataWidget(),
            );
          }

          return FlutterFlowDataTable<FolderRow>(
            controller: _model.paginatedDataTableController,
            data: messageData,
            columnsBuilder: (onSortChanged) => [
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Builder(
                    builder: (context) => FlutterFlowIconButton(
                      borderRadius: 10.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: _model.paginatedDataTableController.selectedRows
                                .toList()
                                .isNotEmpty
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 25.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENT_SIGN_D_T_SEND_more_vert_outlin');
                        if (_model.paginatedDataTableController.selectedRows
                            .toList()
                            .isNotEmpty) {
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
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select message!',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                fixedWidth: 40.0,
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'spgqh7ym' /* Send NO */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                fixedWidth: 110.0,
                onSort: onSortChanged,
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'dy7xg65w' /* Message Description */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'hb1w87gz' /* To */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                fixedWidth: 180.0,
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'cl5jumu9' /* Send Date */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                fixedWidth: 160.0,
                onSort: onSortChanged,
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'j9xrlp86' /* Validate Date */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                fixedWidth: 160.0,
                onSort: onSortChanged,
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'tvamc25w' /* Status */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                fixedWidth: 110.0,
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'COMPONENT_SIGN_D_T_SEND_Icon_e5xyw9sv_ON');
                          await showAlignedDialog(
                            barrierColor: Colors.transparent,
                            context: context,
                            isGlobal: false,
                            avoidOverflow: true,
                            targetAnchor: AlignmentDirectional(-1.0, 1.0)
                                .resolve(Directionality.of(context)),
                            followerAnchor: AlignmentDirectional(1.0, -1.0)
                                .resolve(Directionality.of(context)),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: ComponentSignMessageColumnWidget(),
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 26.0,
                        ),
                      ),
                    ),
                  ),
                ),
                fixedWidth: 70.0,
              ),
            ],
            dataRowBuilder: (messageDataItem, messageDataIndex, selected,
                    onSelectChanged) =>
                DataRow(
              selected: selected,
              onSelectChanged: onSelectChanged != null
                  ? (val) {
                      onSelectChanged(val);
                      _model.updatePage(() {});
                    }
                  : null,
              color: MaterialStateProperty.all(
                messageDataIndex % 2 == 0
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : FlutterFlowTheme.of(context).primaryBackground,
              ),
              cells: [
                Builder(
                  builder: (context) => FlutterFlowIconButton(
                    borderRadius: 10.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      logFirebaseEvent(
                          'COMPONENT_SIGN_D_T_SEND_more_vert_outlin');
                      await showAlignedDialog(
                        barrierColor: Colors.transparent,
                        context: context,
                        isGlobal: false,
                        avoidOverflow: true,
                        targetAnchor: AlignmentDirectional(1.0, 1.0)
                            .resolve(Directionality.of(context)),
                        followerAnchor: AlignmentDirectional(-1.0, -1.0)
                            .resolve(Directionality.of(context)),
                        builder: (dialogContext) {
                          return Material(
                            color: Colors.transparent,
                            child: ComponentSignInboxActionWidget(
                              docSelectedId: messageDataItem.pathUrl!,
                              currentTabIndex: widget!.currentTabbar,
                              docName: messageDataItem.fileName,
                              msgDescription: messageDataItem.msgDescriptios,
                              receiveNum: valueOrDefault<String>(
                                messageDataItem.receiveNumber,
                                '-',
                              ),
                              sendNum: valueOrDefault<String>(
                                messageDataItem.sentNumber,
                                '-',
                              ),
                              documentId: messageDataItem.id,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    messageDataItem.sentNumber,
                    '-',
                  ),
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: messageDataItem.isRead == false
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Stack(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          messageDataItem.msgDescriptios,
                          '-',
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: messageDataItem.isRead == false
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    if (messageDataItem.priority != 0)
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: AlignedTooltip(
                          content: Container(
                            width: 175.0,
                            height: 40.0,
                            child: ComponentSignPriorityWidget(
                              priority: messageDataItem.priority,
                              sensitivity: messageDataItem.sensitivity,
                            ),
                          ),
                          offset: 2.0,
                          preferredDirection: AxisDirection.right,
                          borderRadius: BorderRadius.circular(10.0),
                          backgroundColor: () {
                            if (messageDataItem.priority == 1) {
                              return FlutterFlowTheme.of(context)
                                  .urgentPriority;
                            } else if (messageDataItem.priority == 2) {
                              return FlutterFlowTheme.of(context).highPriority;
                            } else if (messageDataItem.priority == 3) {
                              return FlutterFlowTheme.of(context)
                                  .mediumPriority;
                            } else if (messageDataItem.priority == 4) {
                              return FlutterFlowTheme.of(context).lowPriority;
                            } else {
                              return FlutterFlowTheme.of(context).alternate;
                            }
                          }(),
                          elevation: 1.0,
                          tailBaseWidth: 12.0,
                          tailLength: 6.0,
                          waitDuration: Duration(milliseconds: 0),
                          showDuration: Duration(milliseconds: 0),
                          triggerMode: TooltipTriggerMode.tap,
                          child: Icon(
                            Icons.priority_high_outlined,
                            color: () {
                              if (messageDataItem.priority == 1) {
                                return FlutterFlowTheme.of(context)
                                    .urgentPriority;
                              } else if (messageDataItem.priority == 2) {
                                return FlutterFlowTheme.of(context)
                                    .highPriority;
                              } else if (messageDataItem.priority == 3) {
                                return FlutterFlowTheme.of(context)
                                    .mediumPriority;
                              } else if (messageDataItem.priority == 4) {
                                return FlutterFlowTheme.of(context).lowPriority;
                              } else {
                                return FlutterFlowTheme.of(context).alternate;
                              }
                            }(),
                            size: 20.0,
                          ),
                        ),
                      ),
                  ],
                ),
                FutureBuilder<List<UsersRow>>(
                  future: UsersTable().querySingleRow(
                    queryFn: (q) => q.eqOrNull(
                      'id',
                      messageDataItem.receivedBy,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: SpinKitFadingCircle(
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 25.0,
                          ),
                        ),
                      );
                    }
                    List<UsersRow> listViewUsersRowList = snapshot.data!;

                    final listViewUsersRow = listViewUsersRowList.isNotEmpty
                        ? listViewUsersRowList.first
                        : null;

                    return ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 30.0,
                                height: 30.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    listViewUsersRow?.profileUrl,
                                    'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      listViewUsersRow?.username,
                                      'Guest',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      listViewUsersRow?.email,
                                      'guest@oone.bz',
                                    ).maybeHandleOverflow(
                                      maxChars: 20,
                                      replacement: '…',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(width: 3.0)),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Text(
                  valueOrDefault<String>(
                    dateTimeFormat(
                      "d/M/y h:mm a",
                      messageDataItem.sentDate,
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    dateTimeFormat(
                      "d/M/y h:mm a",
                      messageDataItem.validateDate,
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 110.0,
                    maxHeight: 25.0,
                  ),
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      () {
                        if (messageDataItem.status == 1) {
                          return FlutterFlowTheme.of(context).draftStatus;
                        } else if (messageDataItem.status == 2) {
                          return FlutterFlowTheme.of(context).scheduledStatus;
                        } else if (messageDataItem.status == 3) {
                          return FlutterFlowTheme.of(context).inProgressStatus;
                        } else if (messageDataItem.status == 4) {
                          return FlutterFlowTheme.of(context).approvedStatus;
                        } else if (messageDataItem.status == 5) {
                          return FlutterFlowTheme.of(context).rejectStatus;
                        } else if (messageDataItem.status == 6) {
                          return FlutterFlowTheme.of(context).completedStatus;
                        } else if (messageDataItem.status == 7) {
                          return FlutterFlowTheme.of(context).removeStatus;
                        } else {
                          return FlutterFlowTheme.of(context).primaryBackground;
                        }
                      }(),
                      FlutterFlowTheme.of(context).inProgressStatus,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        valueOrDefault<String>(
                          () {
                            if (messageDataItem.status == 1) {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'Draft',
                                kmText: 'ព្រាងទុក',
                              );
                            } else if (messageDataItem.status == 2) {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'Schedule',
                                kmText: 'កាលវិភាគ',
                              );
                            } else if (messageDataItem.status == 3) {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'In Progress',
                                kmText: 'កំពុងដំណើរការ',
                              );
                            } else if (messageDataItem.status == 4) {
                              return 'Approve';
                            } else if (messageDataItem.status == 5) {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'Reject',
                                kmText: 'បដិសេធ',
                              );
                            } else if (messageDataItem.status == 6) {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'Complete',
                                kmText: 'បញ្ចប់',
                              );
                            } else if (messageDataItem.status == 7) {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'Remove',
                                kmText: 'លុប',
                              );
                            } else {
                              return FFLocalizations.of(context)
                                  .getVariableText(
                                enText: 'Other',
                                kmText: 'ផ្សេងៗ',
                              );
                            }
                          }(),
                          'Status',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (messageDataItem.isRead ?? true)
                        Builder(
                          builder: (context) => FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderRadius: 15.0,
                            borderWidth: 1.0,
                            buttonSize: 30.0,
                            fillColor: Color(0x006F61EF),
                            hoverColor: FlutterFlowTheme.of(context).accent1,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primaryText,
                            icon: Icon(
                              Icons.timeline_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 15.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'COMPONENT_SIGN_D_T_SEND_timeline_outline');
                              await showDialog(
                                barrierColor: Colors.transparent,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(1.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: Container(
                                      width: 600.0,
                                      child: ComponentAcivityDocumentsWidget(
                                        name: valueOrDefault<String>(
                                          messageDataItem.msgDescriptios,
                                          '-',
                                        ),
                                        documentId: messageDataItem.id,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      FlutterFlowIconButton(
                        borderColor: !messageDataItem.isRead!
                            ? Colors.transparent
                            : FlutterFlowTheme.of(context).primaryText,
                        borderRadius: 15.0,
                        borderWidth: 1.0,
                        buttonSize: 30.0,
                        fillColor: !messageDataItem.isRead!
                            ? FlutterFlowTheme.of(context).primary
                            : Colors.transparent,
                        hoverColor: FlutterFlowTheme.of(context).accent1,
                        hoverIconColor:
                            FlutterFlowTheme.of(context).primaryText,
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: !messageDataItem.isRead!
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          size: 15.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'COMPONENT_SIGN_D_T_SEND_remove_red_eye_o');
                          await FolderTable().update(
                            data: {
                              'is_read': true,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              messageDataItem.id,
                            ),
                          );

                          context.pushNamed(
                            'PagePreviewDocument',
                            queryParameters: {
                              'docName': serializeParam(
                                messageDataItem.fileName,
                                ParamType.String,
                              ),
                              'docURL': serializeParam(
                                messageDataItem.pathUrl,
                                ParamType.String,
                              ),
                              'tabindex': serializeParam(
                                widget!.currentTabbar,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          safeSetState(() {});
                        },
                      ),
                    ].divide(SizedBox(width: 6.0)),
                  ),
                ),
              ].map((c) => DataCell(c)).toList(),
            ),
            emptyBuilder: () => Center(
              child: ComponentSignEmptyDataWidget(),
            ),
            paginated: false,
            selectable: true,
            headingRowHeight: 50.0,
            dataRowHeight: 50.0,
            columnSpacing: 5.0,
            headingRowColor: FlutterFlowTheme.of(context).alternate,
            sortIconColor: FlutterFlowTheme.of(context).primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            addHorizontalDivider: true,
            addTopAndBottomDivider: false,
            hideDefaultHorizontalDivider: true,
            horizontalDividerColor:
                FlutterFlowTheme.of(context).secondaryBackground,
            horizontalDividerThickness: 1.0,
            addVerticalDivider: false,
            checkboxUnselectedFillColor: Colors.transparent,
            checkboxSelectedFillColor: FlutterFlowTheme.of(context).primary,
            checkboxCheckColor:
                FlutterFlowTheme.of(context).secondaryBackground,
            checkboxUnselectedBorderColor:
                FlutterFlowTheme.of(context).secondaryText,
            checkboxSelectedBorderColor:
                FlutterFlowTheme.of(context).secondaryText,
          );
        },
      ),
    );
  }
}
