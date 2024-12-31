import '../database.dart';

class SeverityTable extends SupabaseTable<SeverityRow> {
  @override
  String get tableName => 'severity';

  @override
  SeverityRow createRow(Map<String, dynamic> data) => SeverityRow(data);
}

class SeverityRow extends SupabaseDataRow {
  SeverityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeverityTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  List<String> get subServerities => getListField<String>('sub_serverities');
  set subServerities(List<String>? value) =>
      setListField<String>('sub_serverities', value);

  List<String> get subName => getListField<String>('sub_name');
  set subName(List<String>? value) => setListField<String>('sub_name', value);
}
