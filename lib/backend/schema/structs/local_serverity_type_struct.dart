// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalServerityTypeStruct extends FFFirebaseStruct {
  LocalServerityTypeStruct({
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static LocalServerityTypeStruct fromMap(Map<String, dynamic> data) =>
      LocalServerityTypeStruct(
        name: data['name'] as String?,
      );

  static LocalServerityTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? LocalServerityTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocalServerityTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LocalServerityTypeStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocalServerityTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocalServerityTypeStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

LocalServerityTypeStruct createLocalServerityTypeStruct({
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocalServerityTypeStruct(
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocalServerityTypeStruct? updateLocalServerityTypeStruct(
  LocalServerityTypeStruct? localServerityType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    localServerityType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocalServerityTypeStructData(
  Map<String, dynamic> firestoreData,
  LocalServerityTypeStruct? localServerityType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (localServerityType == null) {
    return;
  }
  if (localServerityType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && localServerityType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final localServerityTypeData =
      getLocalServerityTypeFirestoreData(localServerityType, forFieldValue);
  final nestedData =
      localServerityTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      localServerityType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocalServerityTypeFirestoreData(
  LocalServerityTypeStruct? localServerityType, [
  bool forFieldValue = false,
]) {
  if (localServerityType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(localServerityType.toMap());

  // Add any Firestore field values
  localServerityType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocalServerityTypeListFirestoreData(
  List<LocalServerityTypeStruct>? localServerityTypes,
) =>
    localServerityTypes
        ?.map((e) => getLocalServerityTypeFirestoreData(e, true))
        .toList() ??
    [];
