import '../database.dart';

class DocumentsUploadedTable extends SupabaseTable<DocumentsUploadedRow> {
  @override
  String get tableName => 'documents_uploaded';

  @override
  DocumentsUploadedRow createRow(Map<String, dynamic> data) =>
      DocumentsUploadedRow(data);
}

class DocumentsUploadedRow extends SupabaseDataRow {
  DocumentsUploadedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentsUploadedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
