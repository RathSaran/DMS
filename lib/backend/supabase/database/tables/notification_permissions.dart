import '../database.dart';

class NotificationPermissionsTable
    extends SupabaseTable<NotificationPermissionsRow> {
  @override
  String get tableName => 'notification_permissions';

  @override
  NotificationPermissionsRow createRow(Map<String, dynamic> data) =>
      NotificationPermissionsRow(data);
}

class NotificationPermissionsRow extends SupabaseDataRow {
  NotificationPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userid => getField<String>('userid')!;
  set userid(String value) => setField<String>('userid', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  bool? get enableNotification => getField<bool>('enable_notification');
  set enableNotification(bool? value) =>
      setField<bool>('enable_notification', value);
}
