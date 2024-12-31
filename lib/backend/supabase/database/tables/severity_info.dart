import '../database.dart';

class SeverityInfoTable extends SupabaseTable<SeverityInfoRow> {
  @override
  String get tableName => 'severity_info';

  @override
  SeverityInfoRow createRow(Map<String, dynamic> data) => SeverityInfoRow(data);
}

class SeverityInfoRow extends SupabaseDataRow {
  SeverityInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeverityInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get severityId => getField<String>('severity_id')!;
  set severityId(String value) => setField<String>('severity_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get nameEng => getField<String>('name_eng');
  set nameEng(String? value) => setField<String>('name_eng', value);
}
