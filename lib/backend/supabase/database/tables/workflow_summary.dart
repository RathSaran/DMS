import '../database.dart';

class WorkflowSummaryTable extends SupabaseTable<WorkflowSummaryRow> {
  @override
  String get tableName => 'workflow_summary';

  @override
  WorkflowSummaryRow createRow(Map<String, dynamic> data) =>
      WorkflowSummaryRow(data);
}

class WorkflowSummaryRow extends SupabaseDataRow {
  WorkflowSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WorkflowSummaryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get totalInbox => getField<int>('total_inbox');
  set totalInbox(int? value) => setField<int>('total_inbox', value);

  int? get totalSent => getField<int>('total_sent');
  set totalSent(int? value) => setField<int>('total_sent', value);

  int? get totalPriority => getField<int>('total_priority');
  set totalPriority(int? value) => setField<int>('total_priority', value);

  int? get totalDraft => getField<int>('total_draft');
  set totalDraft(int? value) => setField<int>('total_draft', value);

  int? get totalTrash => getField<int>('total_trash');
  set totalTrash(int? value) => setField<int>('total_trash', value);

  int? get total => getField<int>('total');
  set total(int? value) => setField<int>('total', value);

  int? get totalAll => getField<int>('total_all');
  set totalAll(int? value) => setField<int>('total_all', value);

  int? get totalFavorite => getField<int>('total_favorite');
  set totalFavorite(int? value) => setField<int>('total_favorite', value);
}
