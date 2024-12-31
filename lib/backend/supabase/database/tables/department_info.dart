import '../database.dart';

class DepartmentInfoTable extends SupabaseTable<DepartmentInfoRow> {
  @override
  String get tableName => 'department_info';

  @override
  DepartmentInfoRow createRow(Map<String, dynamic> data) =>
      DepartmentInfoRow(data);
}

class DepartmentInfoRow extends SupabaseDataRow {
  DepartmentInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartmentInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);
}
