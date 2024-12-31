import '../database.dart';

class NotificationTable extends SupabaseTable<NotificationRow> {
  @override
  String get tableName => 'notification';

  @override
  NotificationRow createRow(Map<String, dynamic> data) => NotificationRow(data);
}

class NotificationRow extends SupabaseDataRow {
  NotificationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get sendBy => getField<String>('send_by')!;
  set sendBy(String value) => setField<String>('send_by', value);

  DateTime get sendDate => getField<DateTime>('send_date')!;
  set sendDate(DateTime value) => setField<DateTime>('send_date', value);

  List<String> get receiverid => getListField<String>('receiverid');
  set receiverid(List<String>? value) =>
      setListField<String>('receiverid', value);

  List<String> get severity => getListField<String>('severity');
  set severity(List<String>? value) => setListField<String>('severity', value);

  List<String> get departments => getListField<String>('departments');
  set departments(List<String>? value) =>
      setListField<String>('departments', value);

  String? get sender => getField<String>('sender');
  set sender(String? value) => setField<String>('sender', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);
}
