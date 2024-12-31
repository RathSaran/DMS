import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_tool_sign_date_model.dart';
export 'component_tool_sign_date_model.dart';

class ComponentToolSignDateWidget extends StatefulWidget {
  const ComponentToolSignDateWidget({super.key});

  @override
  State<ComponentToolSignDateWidget> createState() =>
      _ComponentToolSignDateWidgetState();
}

class _ComponentToolSignDateWidgetState
    extends State<ComponentToolSignDateWidget> {
  late ComponentToolSignDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentToolSignDateModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMPONENT_TOOL_SIGN_DATE_ComponentTool-S');
      _model.datePick = getCurrentTimestamp;
      safeSetState(() {});
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
    return Draggable<String>(
      data: '1',
      feedback: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('COMPONENT_TOOL_SIGN_DATE_bottomSheet-Mat');
            await showModalBottomSheet<bool>(
                context: context,
                builder: (context) {
                  return ScrollConfiguration(
                    behavior: const MaterialScrollBehavior().copyWith(
                      dragDevices: {
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.touch,
                        PointerDeviceKind.stylus,
                        PointerDeviceKind.unknown
                      },
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.dateAndTime,
                        minimumDate: DateTime(1900),
                        initialDateTime: getCurrentTimestamp,
                        maximumDate: DateTime(2050),
                        use24hFormat: false,
                        onDateTimeChanged: (newDateTime) => safeSetState(() {
                          _model.datePicked = newDateTime;
                        }),
                      ),
                    ),
                  );
                });
            _model.datePick = _model.datePicked;
            safeSetState(() {});
          },
          child: SafeArea(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 250.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0x00E5E7EB),
                    width: 2.0,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    dateTimeFormat(
                      "d/M/y",
                      _model.datePick,
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('COMPONENT_TOOL_SIGN_DATE_bottomSheet-Mat');
          await showModalBottomSheet<bool>(
              context: context,
              builder: (context) {
                return ScrollConfiguration(
                  behavior: const MaterialScrollBehavior().copyWith(
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.unknown
                    },
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.dateAndTime,
                      minimumDate: DateTime(1900),
                      initialDateTime: getCurrentTimestamp,
                      maximumDate: DateTime(2050),
                      use24hFormat: false,
                      onDateTimeChanged: (newDateTime) => safeSetState(() {
                        _model.datePicked = newDateTime;
                      }),
                    ),
                  ),
                );
              });
          _model.datePick = _model.datePicked;
          safeSetState(() {});
        },
        child: SafeArea(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: 250.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0x00E5E7EB),
                  width: 2.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  dateTimeFormat(
                    "d/M/y",
                    _model.datePick,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
