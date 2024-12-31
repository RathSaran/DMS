import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_receiver_recipt_model.dart';
export 'component_sign_receiver_recipt_model.dart';

class ComponentSignReceiverReciptWidget extends StatefulWidget {
  const ComponentSignReceiverReciptWidget({
    super.key,
    this.docURL,
    this.appointmentDate,
  });

  final String? docURL;
  final DateTime? appointmentDate;

  @override
  State<ComponentSignReceiverReciptWidget> createState() =>
      _ComponentSignReceiverReciptWidgetState();
}

class _ComponentSignReceiverReciptWidgetState
    extends State<ComponentSignReceiverReciptWidget>
    with TickerProviderStateMixin {
  late ComponentSignReceiverReciptModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignReceiverReciptModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 4.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.6,
                maxHeight: MediaQuery.sizeOf(context).height * 0.6,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'pso0qedy' /* Recipt for Reciptions */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).error,
                            borderRadius: 10.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            hoverColor: FlutterFlowTheme.of(context).alternate,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            icon: Icon(
                              Icons.close_outlined,
                              color: FlutterFlowTheme.of(context).error,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'COMPONENT_SIGN_RECEIVER_RECIPT_close_out');
                              context.safePop();
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    FutureBuilder<List<FolderRow>>(
                      future: FolderTable().querySingleRow(
                        queryFn: (q) => q.eqOrNull(
                          'path_url',
                          widget!.docURL,
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
                        List<FolderRow> rowFolderRowList = snapshot.data!;

                        final rowFolderRow = rowFolderRowList.isNotEmpty
                            ? rowFolderRowList.first
                            : null;

                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 350.0,
                                      height: 350.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              rowFolderRow?.dcQr,
                                              'https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/QrCode/2024-10-16%2011.46.02.jpg',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 350.0,
                                      height: 350.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '91m04by8' /* Scan to find document */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ae0jl5hz' /* Receive NO:   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    rowFolderRow?.receiveNumber,
                                                    '-',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
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
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '8isaarxb' /* Receive Date:   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    dateTimeFormat(
                                                      "d/M/y h:mm a",
                                                      rowFolderRow
                                                          ?.receivedDate,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    '-',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
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
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'wmeli19y' /* Appointment Date:   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    dateTimeFormat(
                                                      "d/M/y h:mm a",
                                                      widget!.appointmentDate,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    '-',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
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
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '6n7cqpcc' /* Document Name:   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    rowFolderRow?.fileName,
                                                    'Title',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
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
                                          FutureBuilder<List<UsersRow>>(
                                            future: UsersTable().querySingleRow(
                                              queryFn: (q) => q.eqOrNull(
                                                'id',
                                                rowFolderRow?.receivedBy,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRow>
                                                  richTextReceiversUsersRowList =
                                                  snapshot.data!;

                                              final richTextReceiversUsersRow =
                                                  richTextReceiversUsersRowList
                                                          .isNotEmpty
                                                      ? richTextReceiversUsersRowList
                                                          .first
                                                      : null;

                                              return RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'rmfdj6fn' /* Reciptions:   */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        richTextReceiversUsersRow
                                                            ?.username,
                                                        '-',
                                                      ),
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              );
                                            },
                                          ),
                                          FutureBuilder<List<UsersRow>>(
                                            future: UsersTable().querySingleRow(
                                              queryFn: (q) => q.eqOrNull(
                                                'id',
                                                rowFolderRow?.sentBy,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRow>
                                                  richTextSenderUsersRowList =
                                                  snapshot.data!;

                                              final richTextSenderUsersRow =
                                                  richTextSenderUsersRowList
                                                          .isNotEmpty
                                                      ? richTextSenderUsersRowList
                                                          .first
                                                      : null;

                                              return RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'bthd0ynj' /* Sender:   */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        richTextSenderUsersRow
                                                            ?.username,
                                                        '-',
                                                      ),
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ehzlbzvc' /*    */,
                                                      ),
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        richTextSenderUsersRow
                                                            ?.phoneNumber,
                                                        '-',
                                                      ),
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              );
                                            },
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'w08wii8y' /* Description:   */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    rowFolderRow
                                                        ?.msgDescriptios,
                                                    '-',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
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
                                        ]
                                            .divide(SizedBox(height: 5.0))
                                            .addToStart(SizedBox(height: 40.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 50.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.print_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 26.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'COMPONENT_SIGN_RECEIVER_RECIPT_print_out');
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Comming soon!'),
                                    content: Text(' '),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'COMPONENT_SIGN_RECEIVER_RECIPT_OK_BTN_ON');

                              context.pushNamed(
                                'PageMainWorkflow',
                                queryParameters: {
                                  'tabIndex': serializeParam(
                                    1,
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

                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              '12bmjue1' /* OK */,
                            ),
                            options: FFButtonOptions(
                              width: 75.0,
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
                        ]
                            .divide(SizedBox(width: 30.0))
                            .around(SizedBox(width: 30.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
