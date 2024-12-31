// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UploadedfilesModelStruct extends FFFirebaseStruct {
  UploadedfilesModelStruct({
    String? fileName,
    String? fileType,
    String? fileSize,
    String? fileUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fileName = fileName,
        _fileType = fileType,
        _fileSize = fileSize,
        _fileUrl = fileUrl,
        super(firestoreUtilData);

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;

  bool hasFileName() => _fileName != null;

  // "file_type" field.
  String? _fileType;
  String get fileType => _fileType ?? '';
  set fileType(String? val) => _fileType = val;

  bool hasFileType() => _fileType != null;

  // "file_size" field.
  String? _fileSize;
  String get fileSize => _fileSize ?? '';
  set fileSize(String? val) => _fileSize = val;

  bool hasFileSize() => _fileSize != null;

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  set fileUrl(String? val) => _fileUrl = val;

  bool hasFileUrl() => _fileUrl != null;

  static UploadedfilesModelStruct fromMap(Map<String, dynamic> data) =>
      UploadedfilesModelStruct(
        fileName: data['file_name'] as String?,
        fileType: data['file_type'] as String?,
        fileSize: data['file_size'] as String?,
        fileUrl: data['file_url'] as String?,
      );

  static UploadedfilesModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UploadedfilesModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'file_name': _fileName,
        'file_type': _fileType,
        'file_size': _fileSize,
        'file_url': _fileUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file_name': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'file_type': serializeParam(
          _fileType,
          ParamType.String,
        ),
        'file_size': serializeParam(
          _fileSize,
          ParamType.String,
        ),
        'file_url': serializeParam(
          _fileUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static UploadedfilesModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UploadedfilesModelStruct(
        fileName: deserializeParam(
          data['file_name'],
          ParamType.String,
          false,
        ),
        fileType: deserializeParam(
          data['file_type'],
          ParamType.String,
          false,
        ),
        fileSize: deserializeParam(
          data['file_size'],
          ParamType.String,
          false,
        ),
        fileUrl: deserializeParam(
          data['file_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UploadedfilesModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UploadedfilesModelStruct &&
        fileName == other.fileName &&
        fileType == other.fileType &&
        fileSize == other.fileSize &&
        fileUrl == other.fileUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fileName, fileType, fileSize, fileUrl]);
}

UploadedfilesModelStruct createUploadedfilesModelStruct({
  String? fileName,
  String? fileType,
  String? fileSize,
  String? fileUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UploadedfilesModelStruct(
      fileName: fileName,
      fileType: fileType,
      fileSize: fileSize,
      fileUrl: fileUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UploadedfilesModelStruct? updateUploadedfilesModelStruct(
  UploadedfilesModelStruct? uploadedfilesModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    uploadedfilesModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUploadedfilesModelStructData(
  Map<String, dynamic> firestoreData,
  UploadedfilesModelStruct? uploadedfilesModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (uploadedfilesModel == null) {
    return;
  }
  if (uploadedfilesModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && uploadedfilesModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final uploadedfilesModelData =
      getUploadedfilesModelFirestoreData(uploadedfilesModel, forFieldValue);
  final nestedData =
      uploadedfilesModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      uploadedfilesModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUploadedfilesModelFirestoreData(
  UploadedfilesModelStruct? uploadedfilesModel, [
  bool forFieldValue = false,
]) {
  if (uploadedfilesModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(uploadedfilesModel.toMap());

  // Add any Firestore field values
  uploadedfilesModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUploadedfilesModelListFirestoreData(
  List<UploadedfilesModelStruct>? uploadedfilesModels,
) =>
    uploadedfilesModels
        ?.map((e) => getUploadedfilesModelFirestoreData(e, true))
        .toList() ??
    [];
