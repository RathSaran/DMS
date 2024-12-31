import '../database.dart';

class UserInfoTable extends SupabaseTable<UserInfoRow> {
  @override
  String get tableName => 'user_info';

  @override
  UserInfoRow createRow(Map<String, dynamic> data) => UserInfoRow(data);
}

class UserInfoRow extends SupabaseDataRow {
  UserInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get profileUrl => getField<String>('profile_url');
  set profileUrl(String? value) => setField<String>('profile_url', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);
}
