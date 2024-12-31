// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsModelStruct extends FFFirebaseStruct {
  DocumentsModelStruct({
    int? id,
    String? name,
    String? email,
    String? status,
    String? createBy,
    String? recipteName,
    String? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _email = email,
        _status = status,
        _createBy = createBy,
        _recipteName = recipteName,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "create_by" field.
  String? _createBy;
  String get createBy => _createBy ?? '';
  set createBy(String? val) => _createBy = val;

  bool hasCreateBy() => _createBy != null;

  // "recipte_name" field.
  String? _recipteName;
  String get recipteName => _recipteName ?? '';
  set recipteName(String? val) => _recipteName = val;

  bool hasRecipteName() => _recipteName != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static DocumentsModelStruct fromMap(Map<String, dynamic> data) =>
      DocumentsModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        status: data['status'] as String?,
        createBy: data['create_by'] as String?,
        recipteName: data['recipte_name'] as String?,
        updatedAt: data['updatedAt'] as String?,
      );

  static DocumentsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'status': _status,
        'create_by': _createBy,
        'recipte_name': _recipteName,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'create_by': serializeParam(
          _createBy,
          ParamType.String,
        ),
        'recipte_name': serializeParam(
          _recipteName,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentsModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentsModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        createBy: deserializeParam(
          data['create_by'],
          ParamType.String,
          false,
        ),
        recipteName: deserializeParam(
          data['recipte_name'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentsModelStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        status == other.status &&
        createBy == other.createBy &&
        recipteName == other.recipteName &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, email, status, createBy, recipteName, updatedAt]);
}

DocumentsModelStruct createDocumentsModelStruct({
  int? id,
  String? name,
  String? email,
  String? status,
  String? createBy,
  String? recipteName,
  String? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentsModelStruct(
      id: id,
      name: name,
      email: email,
      status: status,
      createBy: createBy,
      recipteName: recipteName,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentsModelStruct? updateDocumentsModelStruct(
  DocumentsModelStruct? documentsModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    documentsModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentsModelStructData(
  Map<String, dynamic> firestoreData,
  DocumentsModelStruct? documentsModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (documentsModel == null) {
    return;
  }
  if (documentsModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && documentsModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentsModelData =
      getDocumentsModelFirestoreData(documentsModel, forFieldValue);
  final nestedData =
      documentsModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = documentsModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentsModelFirestoreData(
  DocumentsModelStruct? documentsModel, [
  bool forFieldValue = false,
]) {
  if (documentsModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(documentsModel.toMap());

  // Add any Firestore field values
  documentsModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentsModelListFirestoreData(
  List<DocumentsModelStruct>? documentsModels,
) =>
    documentsModels
        ?.map((e) => getDocumentsModelFirestoreData(e, true))
        .toList() ??
    [];
