import '../database.dart';

class DepartmentsTable extends SupabaseTable<DepartmentsRow> {
  @override
  String get tableName => 'departments';

  @override
  DepartmentsRow createRow(Map<String, dynamic> data) => DepartmentsRow(data);
}

class DepartmentsRow extends SupabaseDataRow {
  DepartmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartmentsTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nameKh => getField<String>('name_kh');
  set nameKh(String? value) => setField<String>('name_kh', value);

  String? get nameEng => getField<String>('name_eng');
  set nameEng(String? value) => setField<String>('name_eng', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
