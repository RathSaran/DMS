import '../database.dart';

class OrganizationTable extends SupabaseTable<OrganizationRow> {
  @override
  String get tableName => 'organization';

  @override
  OrganizationRow createRow(Map<String, dynamic> data) => OrganizationRow(data);
}

class OrganizationRow extends SupabaseDataRow {
  OrganizationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrganizationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<dynamic> get inOrganization => getListField<dynamic>('in_organization');
  set inOrganization(List<dynamic>? value) =>
      setListField<dynamic>('in_organization', value);

  List<dynamic> get otherOrganization =>
      getListField<dynamic>('other_organization');
  set otherOrganization(List<dynamic>? value) =>
      setListField<dynamic>('other_organization', value);

  String? get sentBy => getField<String>('sent_by');
  set sentBy(String? value) => setField<String>('sent_by', value);

  String? get documentName => getField<String>('document_name');
  set documentName(String? value) => setField<String>('document_name', value);

  String? get documentUrl => getField<String>('document_url');
  set documentUrl(String? value) => setField<String>('document_url', value);

  int? get documentId => getField<int>('document_id');
  set documentId(int? value) => setField<int>('document_id', value);
}
