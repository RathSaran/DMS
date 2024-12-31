import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  int get role => getField<int>('role')!;
  set role(int value) => setField<int>('role', value);

  String? get profileUrl => getField<String>('profile_url');
  set profileUrl(String? value) => setField<String>('profile_url', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  bool? get enableNotification => getField<bool>('enable_notification');
  set enableNotification(bool? value) =>
      setField<bool>('enable_notification', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get departments => getField<String>('departments');
  set departments(String? value) => setField<String>('departments', value);

  int? get organisationID => getField<int>('organisationID');
  set organisationID(int? value) => setField<int>('organisationID', value);
}
