import '../database.dart';

class DocumentActivityTable extends SupabaseTable<DocumentActivityRow> {
  @override
  String get tableName => 'document_activity';

  @override
  DocumentActivityRow createRow(Map<String, dynamic> data) =>
      DocumentActivityRow(data);
}

class DocumentActivityRow extends SupabaseDataRow {
  DocumentActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentActivityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get dcName => getField<String>('dc_name');
  set dcName(String? value) => setField<String>('dc_name', value);

  String? get ownerEmail => getField<String>('owner_email');
  set ownerEmail(String? value) => setField<String>('owner_email', value);

  String? get dpName => getField<String>('dp_name');
  set dpName(String? value) => setField<String>('dp_name', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get userProfile => getField<String>('user_profile');
  set userProfile(String? value) => setField<String>('user_profile', value);

  String? get toDo => getField<String>('toDo');
  set toDo(String? value) => setField<String>('toDo', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  List<int> get timeLine => getListField<int>('time_line');
  set timeLine(List<int>? value) => setListField<int>('time_line', value);

  String? get sender => getField<String>('sender');
  set sender(String? value) => setField<String>('sender', value);

  String? get receiver => getField<String>('receiver');
  set receiver(String? value) => setField<String>('receiver', value);

  String? get department => getField<String>('department');
  set department(String? value) => setField<String>('department', value);
}
