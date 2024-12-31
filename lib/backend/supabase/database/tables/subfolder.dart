import '../database.dart';

class SubfolderTable extends SupabaseTable<SubfolderRow> {
  @override
  String get tableName => 'subfolder';

  @override
  SubfolderRow createRow(Map<String, dynamic> data) => SubfolderRow(data);
}

class SubfolderRow extends SupabaseDataRow {
  SubfolderRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubfolderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  double? get size => getField<double>('size');
  set size(double? value) => setField<double>('size', value);

  int? get folderId => getField<int>('folder_id');
  set folderId(int? value) => setField<int>('folder_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  bool? get favoriteSubfolder => getField<bool>('favorite_subfolder');
  set favoriteSubfolder(bool? value) =>
      setField<bool>('favorite_subfolder', value);
}
