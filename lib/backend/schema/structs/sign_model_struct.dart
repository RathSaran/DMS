// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignModelStruct extends FFFirebaseStruct {
  SignModelStruct({
    int? id,
    String? name,
    String? email,
    String? createdBy,
    String? status,
    String? createdDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _email = email,
        _createdBy = createdBy,
        _status = status,
        _createdDate = createdDate,
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

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "created_date" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  static SignModelStruct fromMap(Map<String, dynamic> data) => SignModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        createdBy: data['created_by'] as String?,
        status: data['status'] as String?,
        createdDate: data['created_date'] as String?,
      );

  static SignModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SignModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'created_by': _createdBy,
        'status': _status,
        'created_date': _createdDate,
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
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'created_date': serializeParam(
          _createdDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static SignModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SignModelStruct(
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
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['created_date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SignModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SignModelStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        createdBy == other.createdBy &&
        status == other.status &&
        createdDate == other.createdDate;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, email, createdBy, status, createdDate]);
}

SignModelStruct createSignModelStruct({
  int? id,
  String? name,
  String? email,
  String? createdBy,
  String? status,
  String? createdDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SignModelStruct(
      id: id,
      name: name,
      email: email,
      createdBy: createdBy,
      status: status,
      createdDate: createdDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SignModelStruct? updateSignModelStruct(
  SignModelStruct? signModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    signModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSignModelStructData(
  Map<String, dynamic> firestoreData,
  SignModelStruct? signModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (signModel == null) {
    return;
  }
  if (signModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && signModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final signModelData = getSignModelFirestoreData(signModel, forFieldValue);
  final nestedData = signModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = signModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSignModelFirestoreData(
  SignModelStruct? signModel, [
  bool forFieldValue = false,
]) {
  if (signModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(signModel.toMap());

  // Add any Firestore field values
  signModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSignModelListFirestoreData(
  List<SignModelStruct>? signModels,
) =>
    signModels?.map((e) => getSignModelFirestoreData(e, true)).toList() ?? [];
