import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_sign_filter_message_model.dart';
export 'component_sign_filter_message_model.dart';

class ComponentSignFilterMessageWidget extends StatefulWidget {
  const ComponentSignFilterMessageWidget({super.key});

  @override
  State<ComponentSignFilterMessageWidget> createState() =>
      _ComponentSignFilterMessageWidgetState();
}

class _ComponentSignFilterMessageWidgetState
    extends State<ComponentSignFilterMessageWidget> {
  late ComponentSignFilterMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentSignFilterMessageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 300.0,
          maxHeight: 400.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0x7F6F61EF),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<String>(
                            _model.dropDownValue1 ??=
                                FFLocalizations.of(context).getText(
                              '8kkcf1sc' /* Today */,
                            ),
                          ),
                          options: [
                            FFLocalizations.of(context).getText(
                              'i83vliec' /* Today */,
                            ),
                            FFLocalizations.of(context).getText(
                              'unsg7dlg' /* Yesterday */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ifb3uijt' /* This Week */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ovj2h95d' /* Last Week */,
                            ),
                            FFLocalizations.of(context).getText(
                              'xw2maeaw' /* This Month */,
                            ),
                            FFLocalizations.of(context).getText(
                              'jgu0d03z' /* Last Month */,
                            ),
                            FFLocalizations.of(context).getText(
                              'wt66c91f' /* This Year */,
                            ),
                            FFLocalizations.of(context).getText(
                              '37yoxpbc' /* Select Specific Date */,
                            )
                          ],
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue1 = val);
                            logFirebaseEvent(
                                'COMPONENT_SIGN_FILTER_MESSAGE_DropDown_x');
                            if (_model.dropDownValue1 ==
                                'Select Specific Date') {
                              await showModalBottomSheet<bool>(
                                  context: context,
                                  builder: (context) {
                                    return ScrollConfiguration(
                                      behavior: const MaterialScrollBehavior()
                                          .copyWith(
                                        dragDevices: {
                                          PointerDeviceKind.mouse,
                                          PointerDeviceKind.touch,
                                          PointerDeviceKind.stylus,
                                          PointerDeviceKind.unknown
                                        },
                                      ),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.date,
                                          minimumDate: DateTime(1900),
                                          initialDateTime: getCurrentTimestamp,
                                          maximumDate: DateTime(2050),
                                          use24hFormat: false,
                                          onDateTimeChanged: (newDateTime) =>
                                              safeSetState(() {
                                            _model.datePicked = newDateTime;
                                          }),
                                        ),
                                      ),
                                    );
                                  });
                            }
                          },
                          height: 50.0,
                          maxHeight: 250.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 1.0,
                          borderRadius: 10.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlutterFlowDropDown<int>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<int>(
                            _model.dropDownValue2 ??= 3,
                          ),
                          options: List<int>.from([1, 2, 3, 4, 5, 6, 7]),
                          optionLabels: [
                            FFLocalizations.of(context).getText(
                              'pbhccqi6' /* Draft */,
                            ),
                            FFLocalizations.of(context).getText(
                              '1yfgiu57' /* Schedule */,
                            ),
                            FFLocalizations.of(context).getText(
                              'kwu5y2s5' /* In Progress */,
                            ),
                            FFLocalizations.of(context).getText(
                              '02q5ut0m' /* Approve */,
                            ),
                            FFLocalizations.of(context).getText(
                              'y6d9a32n' /* Reject */,
                            ),
                            FFLocalizations.of(context).getText(
                              'd53s950e' /* Complete */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gjvnvcf3' /* All */,
                            )
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue2 = val),
                          height: 50.0,
                          maxHeight: 200.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 1.0,
                          borderRadius: 10.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 5.0))
                        .around(SizedBox(height: 5.0)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENT_SIGN_FILTER_MESSAGE_btnOSConti');
                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        'tot6ut65' /* Close */,
                      ),
                      options: FFButtonOptions(
                        width: 80.0,
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).lineColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
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
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'COMPONENT_SIGN_FILTER_MESSAGE_btnOSConti');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Saved',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).primary,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        'm88to4n6' /* Save */,
                      ),
                      options: FFButtonOptions(
                        width: 80.0,
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                  ].divide(SizedBox(width: 15.0)).around(SizedBox(width: 15.0)),
                ),
              ),
            ].divide(SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
