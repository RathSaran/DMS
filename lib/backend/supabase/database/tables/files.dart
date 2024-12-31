import '../database.dart';

class FilesTable extends SupabaseTable<FilesRow> {
  @override
  String get tableName => 'files';

  @override
  FilesRow createRow(Map<String, dynamic> data) => FilesRow(data);
}

class FilesRow extends SupabaseDataRow {
  FilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FilesTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  double? get size => getField<double>('size');
  set size(double? value) => setField<double>('size', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  int? get subfolderId => getField<int>('subfolder_id');
  set subfolderId(int? value) => setField<int>('subfolder_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get favoriteFile => getField<bool>('favorite_file');
  set favoriteFile(bool? value) => setField<bool>('favorite_file', value);

  bool? get trash => getField<bool>('trash');
  set trash(bool? value) => setField<bool>('trash', value);

  bool? get shareWith => getField<bool>('share_with');
  set shareWith(bool? value) => setField<bool>('share_with', value);

  bool? get signatured => getField<bool>('signatured');
  set signatured(bool? value) => setField<bool>('signatured', value);

  String? get createBy => getField<String>('create_by');
  set createBy(String? value) => setField<String>('create_by', value);

  int? get type => getField<int>('type');
  set type(int? value) => setField<int>('type', value);

  dynamic? get metadata => getField<dynamic>('metadata');
  set metadata(dynamic? value) => setField<dynamic>('metadata', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);
}
