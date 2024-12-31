import '../database.dart';

class FolderTable extends SupabaseTable<FolderRow> {
  @override
  String get tableName => 'folder';

  @override
  FolderRow createRow(Map<String, dynamic> data) => FolderRow(data);
}

class FolderRow extends SupabaseDataRow {
  FolderRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FolderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get size => getField<double>('size');
  set size(double? value) => setField<double>('size', value);

  DateTime? get lastModify => getField<DateTime>('last_modify');
  set lastModify(DateTime? value) => setField<DateTime>('last_modify', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get favoriteFolder => getField<bool>('favorite_folder');
  set favoriteFolder(bool? value) => setField<bool>('favorite_folder', value);

  bool? get trash => getField<bool>('trash');
  set trash(bool? value) => setField<bool>('trash', value);

  bool? get shareWith => getField<bool>('share_with');
  set shareWith(bool? value) => setField<bool>('share_with', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  DateTime? get updatedDate => getField<DateTime>('updated_date');
  set updatedDate(DateTime? value) => setField<DateTime>('updated_date', value);

  DateTime? get validateDate => getField<DateTime>('validate_date');
  set validateDate(DateTime? value) =>
      setField<DateTime>('validate_date', value);

  DateTime? get sentDate => getField<DateTime>('sent_date');
  set sentDate(DateTime? value) => setField<DateTime>('sent_date', value);

  DateTime? get receivedDate => getField<DateTime>('received_date');
  set receivedDate(DateTime? value) =>
      setField<DateTime>('received_date', value);

  String? get sentBy => getField<String>('sent_by');
  set sentBy(String? value) => setField<String>('sent_by', value);

  String? get receivedBy => getField<String>('received_by');
  set receivedBy(String? value) => setField<String>('received_by', value);

  String? get pathUrl => getField<String>('path_url');
  set pathUrl(String? value) => setField<String>('path_url', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  int? get tabs => getField<int>('tabs');
  set tabs(int? value) => setField<int>('tabs', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);

  String? get parentPath => getField<String>('parent_path');
  set parentPath(String? value) => setField<String>('parent_path', value);

  dynamic? get metadata => getField<dynamic>('metadata');
  set metadata(dynamic? value) => setField<dynamic>('metadata', value);

  String? get receiveNumber => getField<String>('receive_number');
  set receiveNumber(String? value) => setField<String>('receive_number', value);

  String? get sentNumber => getField<String>('sent_number');
  set sentNumber(String? value) => setField<String>('sent_number', value);

  String? get dcQr => getField<String>('dc_qr');
  set dcQr(String? value) => setField<String>('dc_qr', value);

  int? get role => getField<int>('role');
  set role(int? value) => setField<int>('role', value);

  String? get userProfile => getField<String>('user_profile');
  set userProfile(String? value) => setField<String>('user_profile', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get colorCode => getField<String>('color_code');
  set colorCode(String? value) => setField<String>('color_code', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);

  String? get msgDescriptios => getField<String>('msg_descriptios');
  set msgDescriptios(String? value) =>
      setField<String>('msg_descriptios', value);

  int? get priority => getField<int>('priority');
  set priority(int? value) => setField<int>('priority', value);

  int get sensitivity => getField<int>('sensitivity')!;
  set sensitivity(int value) => setField<int>('sensitivity', value);
}
