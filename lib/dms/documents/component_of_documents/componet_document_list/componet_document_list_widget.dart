import '/backend/supabase/supabase.dart';
import '/dms/work_flow/component_page_workflow/component_sign_empty_data/component_sign_empty_data_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'componet_document_list_model.dart';
export 'componet_document_list_model.dart';

class ComponetDocumentListWidget extends StatefulWidget {
  const ComponetDocumentListWidget({super.key});

  @override
  State<ComponetDocumentListWidget> createState() =>
      _ComponetDocumentListWidgetState();
}

class _ComponetDocumentListWidgetState
    extends State<ComponetDocumentListWidget> {
  late ComponetDocumentListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponetDocumentListModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMPONET_DOCUMENT_LIST_ComponetDocumentL');
      _model.folder = await FolderTable().queryRows(
        queryFn: (q) => q,
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Builder(
          builder: (context) {
            final folderList = _model.folder?.toList() ?? [];
            if (folderList.isEmpty) {
              return Center(
                child: ComponentSignEmptyDataWidget(),
              );
            }

            return FlutterFlowDataTable<FolderRow>(
              controller: _model.paginatedDataTableController,
              data: folderList,
              columnsBuilder: (onSortChanged) => [
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Icon(
                      Icons.more_vert,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'r5te4lno' /* Name */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'gfzaeiul' /* Edit Header 3 */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '3c29tpj2' /* Edit Header 4 */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'g06mwvi1' /* Edit Header 5 */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'wey99dhc' /* Edit Header 6 */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'q3h93n7y' /* Edit Header 7 */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                DataColumn2(
                  label: DefaultTextStyle.merge(
                    softWrap: true,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '8gn8ivk7' /* Edit Header 8 */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
              dataRowBuilder: (folderListItem, folderListIndex, selected,
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
                  folderListIndex % 2 == 0
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : FlutterFlowTheme.of(context).primaryBackground,
                ),
                cells: [
                  Icon(
                    Icons.more_vert,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  Text(
                    valueOrDefault<String>(
                      folderListItem.name,
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'kr4b61gm' /* Edit Column 3 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'ln6le8ry' /* Edit Column 4 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'n5zdcy1x' /* Edit Column 5 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'ozo2vjpi' /* Edit Column 6 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'bgad5dce' /* Edit Column 7 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'xw1nnyhs' /* Edit Column 8 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
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
      ],
    );
  }
}
