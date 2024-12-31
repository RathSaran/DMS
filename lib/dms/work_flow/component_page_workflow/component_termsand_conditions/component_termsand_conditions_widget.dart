import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_termsand_conditions_model.dart';
export 'component_termsand_conditions_model.dart';

class ComponentTermsandConditionsWidget extends StatefulWidget {
  /// Used: PageSignUpload
  const ComponentTermsandConditionsWidget({
    super.key,
    this.iconOne,
    this.iconTwo,
    this.iconThree,
    this.iconFour,
    this.colorBgOne,
    this.colorBgTwo,
    this.colorBgThree,
    this.colorBgFour,
    this.textOne,
    this.textTwo,
    this.textThree,
    this.textFour,
    this.iconFive,
    this.colorBgFive,
    this.textFive,
    required this.docSelectedId,
    required this.docName,
  });

  final Widget? iconOne;
  final Widget? iconTwo;
  final Widget? iconThree;
  final Widget? iconFour;
  final Color? colorBgOne;
  final Color? colorBgTwo;
  final Color? colorBgThree;
  final Color? colorBgFour;
  final Color? textOne;
  final Color? textTwo;
  final Color? textThree;
  final Color? textFour;
  final Widget? iconFive;
  final Color? colorBgFive;
  final Color? textFive;
  final String? docSelectedId;
  final String? docName;

  @override
  State<ComponentTermsandConditionsWidget> createState() =>
      _ComponentTermsandConditionsWidgetState();
}

class _ComponentTermsandConditionsWidgetState
    extends State<ComponentTermsandConditionsWidget> {
  late ComponentTermsandConditionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentTermsandConditionsModel());

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
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 700.0,
            height: 580.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).lineColor,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'lyalamnr' /* Terms and Conditions */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Container(
                    height: 410.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MarkdownBody(
                            data:
                                '''# 1. Introduction\nWelcome to [Your Company Name]\'s Document Management System (DMS). By accessing or using our platform, you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these terms, please refrain from using the DMS.\n\n# 2. Definitions\nUser: Refers to any individual or entity that accesses the DMS.\nDocument Management System (DMS): The software provided by [Your Company Name] for the storage, management, and organization of digital documents.\nContent: Refers to any documents, files, information, or data uploaded by the User.\nCompany: Refers to [Your Company Name], the provider of the DMS.\n# 3. Eligibility\nUsers must be at least 18 years old and legally able to enter into binding contracts to use this service. By using the DMS, you confirm that you meet these eligibility criteria.\n\n# 4. Account Registration\nTo access certain features of the DMS, Users must register for an account.\nUsers are responsible for maintaining the confidentiality of their account credentials and agree to notify the Company immediately of any unauthorized use.\nThe Company reserves the right to suspend or terminate any account that violates these Terms and Conditions.\n# 5. Use of the DMS\nUsers agree to use the DMS solely for lawful purposes and in accordance with these Terms.\nUsers are prohibited from uploading or distributing any Content that is illegal, harmful, threatening, defamatory, obscene, infringing on intellectual property rights, or otherwise objectionable.\nThe Company reserves the right to remove any Content that violates these Terms without prior notice.\n# 6. Content Ownership\nUsers retain ownership of all documents, files, and data they upload to the DMS.\nBy uploading Content to the DMS, Users grant the Company a non-exclusive, worldwide, royalty-free license to use, store, and process the Content solely for the purpose of providing the DMS services.\nUsers are responsible for ensuring that they have the necessary rights and permissions to upload any Content to the DMS.\n# 7. Data Privacy\nThe Company is committed to protecting the privacy and confidentiality of Users’ data. All personal and document data will be handled in accordance with our [Privacy Policy](Link to Privacy Policy).\nUsers consent to the collection, use, and sharing of their data as described in the Privacy Policy.\n# 8. Document Storage & Version Control\nThe DMS provides tools for storing, managing, and tracking versions of documents.\nUsers acknowledge that it is their responsibility to monitor and manage document versions, including restoring previous versions if necessary.\nThe Company will make reasonable efforts to ensure data integrity but is not liable for any data loss or corruption resulting from User actions or system failures.\n# 9. Security\nThe Company takes security seriously and implements appropriate measures to protect User data.\nUsers agree to take all reasonable precautions to secure their account and data, including keeping login credentials confidential.\nThe Company is not responsible for any breach of security or unauthorized access to User accounts resulting from User actions.\n# 10. Service Availability\nWhile the Company strives to maintain an uninterrupted service, it does not guarantee that the DMS will always be available, error-free, or secure.\nThe Company reserves the right to suspend or discontinue the DMS for maintenance, updates, or any other reason, without prior notice.\nThe Company will not be liable for any disruptions, losses, or damages that arise from service interruptions.\n11. Payment and Fees\nSome features of the DMS may require payment. Users agree to pay all fees associated with the services they use.\nThe Company reserves the right to change the pricing structure or introduce new fees upon providing notice to Users.\nFailure to pay the required fees may result in suspension or termination of access to the DMS.\n12. Termination\nThe Company reserves the right to suspend or terminate a User’s access to the DMS at its sole discretion if the User violates these Terms or engages in activities that harm the platform or other Users.\nUpon termination, Users will no longer have access to their account or Content stored in the DMS. The Company may retain or delete User data as per the retention policy outlined in the Privacy Policy.\n13. Limitation of Liability\nThe DMS is provided \"as is\" and \"as available\" without warranties of any kind, either express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose, and non-infringement.\nTo the maximum extent permitted by law, the Company shall not be liable for any indirect, incidental, special, or consequential damages, including loss of data, revenue, or profits arising out of the use or inability to use the DMS.\n14. Indemnification\nUsers agree to indemnify, defend, and hold harmless the Company, its affiliates, and employees from any claims, liabilities, damages, and expenses arising out of:\n\nUser’s violation of these Terms.\nAny Content uploaded by the User that infringes the rights of third parties or violates applicable laws.\n15. Intellectual Property\nAll intellectual property rights in the DMS, including software, design, trademarks, and logos, are owned by the Company or its licensors.\nUsers are granted a limited, non-exclusive, non-transferable license to access and use the DMS for their internal business purposes.\n16. Modifications to Terms\nThe Company reserves the right to modify these Terms and Conditions at any time. Users will be notified of any changes through the platform or via email.\nContinued use of the DMS after any changes to the Terms signifies User acceptance of the revised terms.\n17. Governing Law\nThese Terms and Conditions shall be governed by and construed in accordance with the laws of [Your Country/Region], without regard to its conflict of law principles.\n\n18. Dispute Resolution\nAny disputes arising from the use of the DMS shall be resolved through negotiation. If a resolution cannot be reached, disputes shall be submitted to binding arbitration under the rules of [Arbitration Body] or brought before the courts of [Jurisdiction].\n\n19. Contact Information\nIf you have any questions or concerns about these Terms, please contact us at [Contact Email] or [Company Address].''',
                            selectable: true,
                            onTapLink: (_, url, __) => launchURL(url!),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.cbAgreeandContinueValue ??= false,
                              onChanged: (newValue) async {
                                safeSetState(() =>
                                    _model.cbAgreeandContinueValue = newValue!);
                                if (newValue!) {
                                  logFirebaseEvent(
                                      'COMPONENT_TERMSAND_CONDITIONS_cbAgreeand');
                                  _model.isButtonEnabled =
                                      !_model.isButtonEnabled;
                                  safeSetState(() {});
                                } else {
                                  logFirebaseEvent(
                                      'COMPONENT_TERMSAND_CONDITIONS_cbAgreeand');
                                  _model.isButtonEnabled =
                                      !_model.isButtonEnabled;
                                  safeSetState(() {});
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'lg662qk5' /* I confirm that I have to read ... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'COMPONENT_TERMSAND_CONDITIONS_btnClose_O');
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'iesphtfg' /* Close */,
                            ),
                            options: FFButtonOptions(
                              width: 100.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).lineColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
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
                            onPressed: _model.isButtonEnabled
                                ? null
                                : () async {
                                    logFirebaseEvent(
                                        'COMPONENT_TERMSAND_CONDITIONS_btnAgreeCo');

                                    context.pushNamed(
                                      'PageWorkflowActions',
                                      queryParameters: {
                                        'checkTermCondition': serializeParam(
                                          true,
                                          ParamType.bool,
                                        ),
                                        'documentName': serializeParam(
                                          widget!.docName,
                                          ParamType.String,
                                        ),
                                        'documentURL': serializeParam(
                                          widget!.docSelectedId,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                            text: FFLocalizations.of(context).getText(
                              '4ez1bpq6' /* Agree and Continue */,
                            ),
                            options: FFButtonOptions(
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
                              disabledColor:
                                  FlutterFlowTheme.of(context).alternate,
                              disabledTextColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 30.0))
                            .around(SizedBox(width: 30.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
