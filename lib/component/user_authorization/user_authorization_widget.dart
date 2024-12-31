import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_authorization_model.dart';
export 'user_authorization_model.dart';

class UserAuthorizationWidget extends StatefulWidget {
  const UserAuthorizationWidget({super.key});

  @override
  State<UserAuthorizationWidget> createState() =>
      _UserAuthorizationWidgetState();
}

class _UserAuthorizationWidgetState extends State<UserAuthorizationWidget> {
  late UserAuthorizationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAuthorizationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'user_authorization'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.sidebarModel,
                updateCallback: () => safeSetState(() {}),
                child: SidebarWidget(
                  iconOne: Icon(
                    Icons.dashboard_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  iconTwo: Icon(
                    Icons.done_all_sharp,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  iconThree: Icon(
                    Icons.stacked_bar_chart,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  iconFour: Icon(
                    Icons.settings_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  colorBgOne: FlutterFlowTheme.of(context).secondaryBackground,
                  colorBgTwo: FlutterFlowTheme.of(context).secondaryBackground,
                  colorBgThree:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  colorBgFour: FlutterFlowTheme.of(context).secondaryBackground,
                  textOne: FlutterFlowTheme.of(context).secondaryText,
                  textTwo: FlutterFlowTheme.of(context).secondaryText,
                  textThree: FlutterFlowTheme.of(context).secondaryText,
                  textFour: FlutterFlowTheme.of(context).secondaryText,
                  iconFive: Icon(
                    Icons.folder_open,
                  ),
                  colorBgFive: FlutterFlowTheme.of(context).secondaryBackground,
                  textFive: FlutterFlowTheme.of(context).secondaryText,
                  bgColor6: FlutterFlowTheme.of(context).primaryBackground,
                  icon6: Icon(
                    Icons.supervisor_account,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  text6: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
