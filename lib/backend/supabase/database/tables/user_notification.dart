import '../database.dart';

class UserNotificationTable extends SupabaseTable<UserNotificationRow> {
  @override
  String get tableName => 'user_notification';

  @override
  UserNotificationRow createRow(Map<String, dynamic> data) =>
      UserNotificationRow(data);
}

class UserNotificationRow extends SupabaseDataRow {
  UserNotificationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserNotificationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get notificationId => getField<int>('notification_id');
  set notificationId(int? value) => setField<int>('notification_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  bool? get isread => getField<bool>('isread');
  set isread(bool? value) => setField<bool>('isread', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get notificationCount => getField<int>('notification_count');
  set notificationCount(int? value) =>
      setField<int>('notification_count', value);
}
