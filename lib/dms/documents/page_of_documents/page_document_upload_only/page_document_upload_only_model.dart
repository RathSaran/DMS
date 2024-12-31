import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/common_elements/navigate_back_page_header/navigate_back_page_header_widget.dart';
import '/components/form_elements/my_text_field/my_text_field_widget.dart';
import '/dms/documents/component_of_documents/component_option_upload/component_option_upload_widget.dart';
import '/dms/documents/component_of_documents/component_process_document/component_process_document_widget.dart';
import '/dms/home/settings/componenets/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'page_document_upload_only_widget.dart'
    show PageDocumentUploadOnlyWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageDocumentUploadOnlyModel
    extends FlutterFlowModel<PageDocumentUploadOnlyWidget> {
  ///  Local state fields for this page.

  bool? showUpload;

  bool isSentNow = true;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavigateBackPageHeader component.
  late NavigateBackPageHeaderModel navigateBackPageHeaderModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel1;
  // State field(s) for DocumentTag widget.
  String? documentTagValue1;
  FormFieldController<String>? documentTagValueController1;
  // State field(s) for DocumentTag widget.
  String? documentTagValue2;
  FormFieldController<String>? documentTagValueController2;
  // State field(s) for DocumentTag widget.
  String? documentTagValue3;
  FormFieldController<String>? documentTagValueController3;
  // State field(s) for DocumentTag widget.
  String? documentTagValue4;
  FormFieldController<String>? documentTagValueController4;
  // Model for MyTextField component.
  late MyTextFieldModel myTextFieldModel2;
  // Model for ComponentProcessDocument component.
  late ComponentProcessDocumentModel componentProcessDocumentModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  FolderRow? documentUploaded;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navigateBackPageHeaderModel =
        createModel(context, () => NavigateBackPageHeaderModel());
    myTextFieldModel1 = createModel(context, () => MyTextFieldModel());
    myTextFieldModel2 = createModel(context, () => MyTextFieldModel());
    componentProcessDocumentModel =
        createModel(context, () => ComponentProcessDocumentModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    navigateBackPageHeaderModel.dispose();
    myTextFieldModel1.dispose();
    myTextFieldModel2.dispose();
    componentProcessDocumentModel.dispose();
  }
}
