import '../database.dart';

class DocumentsTable extends SupabaseTable<DocumentsRow> {
  @override
  String get tableName => 'documents';

  @override
  DocumentsRow createRow(Map<String, dynamic> data) => DocumentsRow(data);
}

class DocumentsRow extends SupabaseDataRow {
  DocumentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get createBy => getField<String>('create_by');
  set createBy(String? value) => setField<String>('create_by', value);

  String? get modifiedBy => getField<String>('modified_by');
  set modifiedBy(String? value) => setField<String>('modified_by', value);

  DateTime? get modifiedDate => getField<DateTime>('modifiedDate');
  set modifiedDate(DateTime? value) =>
      setField<DateTime>('modifiedDate', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  List<String> get type => getListField<String>('type');
  set type(List<String>? value) => setListField<String>('type', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  List<String> get path => getListField<String>('path');
  set path(List<String>? value) => setListField<String>('path', value);

  dynamic? get metadata => getField<dynamic>('metadata');
  set metadata(dynamic? value) => setField<dynamic>('metadata', value);

  String? get isActive => getField<String>('is_active');
  set isActive(String? value) => setField<String>('is_active', value);

  String? get isFavorite => getField<String>('is_favorite');
  set isFavorite(String? value) => setField<String>('is_favorite', value);

  String? get isShared => getField<String>('is_shared');
  set isShared(String? value) => setField<String>('is_shared', value);

  String? get isTrashed => getField<String>('is_trashed');
  set isTrashed(String? value) => setField<String>('is_trashed', value);

  List<String> get colors => getListField<String>('colors');
  set colors(List<String>? value) => setListField<String>('colors', value);

  String? get nickName => getField<String>('nick_name');
  set nickName(String? value) => setField<String>('nick_name', value);

  String? get tab => getField<String>('tab');
  set tab(String? value) => setField<String>('tab', value);
}
