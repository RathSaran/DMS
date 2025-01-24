import '/dms/documents/component_of_documents/component_colum_filter/component_colum_filter_widget.dart';
import '/dms/documents/component_of_documents/component_filter_documents/component_filter_documents_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'components_filter_hide_show_type_view_model.dart';
export 'components_filter_hide_show_type_view_model.dart';

class ComponentsFilterHideShowTypeViewWidget extends StatefulWidget {
  /// ComponentsFilterHideShowTypeView
  const ComponentsFilterHideShowTypeViewWidget({super.key});

  @override
  State<ComponentsFilterHideShowTypeViewWidget> createState() =>
      _ComponentsFilterHideShowTypeViewWidgetState();
}

class _ComponentsFilterHideShowTypeViewWidgetState
    extends State<ComponentsFilterHideShowTypeViewWidget> {
  late ComponentsFilterHideShowTypeViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ComponentsFilterHideShowTypeViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'eib19fx1' /* Filter */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.right,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 25.0,
                  tailLength: 0.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) => FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        hoverIconColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.filter_alt_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 26.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          logFirebaseEvent(
                              'COMPONENTS_FILTER_HIDE_SHOW_TYPE_VIEW_Ic');
                          showAlignedDialog(
                            context: context,
                            isGlobal: false,
                            avoidOverflow: false,
                            targetAnchor: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            followerAnchor: AlignmentDirectional(1.0, -1.0)
                                .resolve(Directionality.of(context)),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: Container(
                                  height: 300.0,
                                  width: 400.0,
                                  child: ComponentFilterDocumentsWidget(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'x2nnxxa7' /* Show/HideColumn */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.right,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 25.0,
                  tailLength: 0.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) => FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        hoverIconColor: FlutterFlowTheme.of(context).primary,
                        icon: FaIcon(
                          FontAwesomeIcons.columns,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 26.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          logFirebaseEvent(
                              'COMPONENTS_FILTER_HIDE_SHOW_TYPE_VIEW_Ic');
                          showAlignedDialog(
                            context: context,
                            isGlobal: false,
                            avoidOverflow: false,
                            targetAnchor: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            followerAnchor: AlignmentDirectional(1.0, -1.0)
                                .resolve(Directionality.of(context)),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: Container(
                                  height: 600.0,
                                  width: 400.0,
                                  child: ComponentColumFilterWidget(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'cg45543o' /* ViewType */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.right,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 25.0,
                  tailLength: 0.0,
                  waitDuration: Duration(milliseconds: 0),
                  showDuration: Duration(milliseconds: 0),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      hoverIconColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.view_comfortable,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 26.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENTS_FILTER_HIDE_SHOW_TYPE_VIEW_Ic');
                        if (FFAppState().switchViewGridDoc) {
                          FFAppState().switchViewGridDoc = true;
                          safeSetState(() {});
                        } else {
                          FFAppState().switchViewGridDoc = false;
                          safeSetState(() {});
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
