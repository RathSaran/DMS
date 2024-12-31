import '../database.dart';

class ConfigurationdocTable extends SupabaseTable<ConfigurationdocRow> {
  @override
  String get tableName => 'configurationdoc';

  @override
  ConfigurationdocRow createRow(Map<String, dynamic> data) =>
      ConfigurationdocRow(data);
}

class ConfigurationdocRow extends SupabaseDataRow {
  ConfigurationdocRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConfigurationdocTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nameKh => getField<String>('name_kh');
  set nameKh(String? value) => setField<String>('name_kh', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  int? get secondID => getField<int>('secondID');
  set secondID(int? value) => setField<int>('secondID', value);
}
