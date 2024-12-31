import '/backend/supabase/supabase.dart';
import '/dms/home/settings/componenets/component_action_timeline/component_action_timeline_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'component_acivity_documents_widget.dart'
    show ComponentAcivityDocumentsWidget;
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentAcivityDocumentsModel
    extends FlutterFlowModel<ComponentAcivityDocumentsWidget> {
  ///  Local state fields for this component.

  String name = 'Document';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in ComponentAcivityDocuments widget.
  List<OrganizationRow>? orga;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
