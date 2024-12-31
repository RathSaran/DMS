import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

import 'package:ff_commons/api_requests/api_paging_params.dart';

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Test APIs Group Code

class TestAPIsGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {};
}

/// End Test APIs Group Code

/// Start DMSCore Group Code

class DMSCoreGroup {
  static String getBaseUrl() => 'https://dms-core-c6dh.onrender.com';
  static Map<String, String> headers = {};
  static DocumentsCall documentsCall = DocumentsCall();
  static SignCall signCall = SignCall();
  static PostPrivacyCall postPrivacyCall = PostPrivacyCall();
}

class DocumentsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DMSCoreGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'documents',
      apiUrl: '${baseUrl}/v1/privacy-policy',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DMSCoreGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Sign',
      apiUrl: '${baseUrl}/get-category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzEsImlhdCI6MTcyODMxNjMwMSwiZXhwIjoxNzM2MDkyMzAxfQ.Lr1W7onJAChTfAA-7IGGEjrbE2tlEMUDwVMsgOlF71Y',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostPrivacyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DMSCoreGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "content": "This is the privacy policy content. It explains how we collect, use, and protect user data."
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postPrivacy',
      apiUrl: '${baseUrl}/v1/privacy-policy',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DMSCore Group Code

/// Start ODMS Group Code

class OdmsGroup {
  static String getBaseUrl() => 'https://mn-core.onrender.com';
  static Map<String, String> headers = {};
  static GetDocumentsCall getDocumentsCall = GetDocumentsCall();
  static PostDocumentCall postDocumentCall = PostDocumentCall();
  static DeleteDocumentCall deleteDocumentCall = DeleteDocumentCall();
  static UpdateDocumentCall updateDocumentCall = UpdateDocumentCall();
  static GetSignCall getSignCall = GetSignCall();
  static GetDocumentByIdCall getDocumentByIdCall = GetDocumentByIdCall();
  static PostSignCall postSignCall = PostSignCall();
  static DeleteSignCall deleteSignCall = DeleteSignCall();
  static UpdateSignCall updateSignCall = UpdateSignCall();
  static GetDocumentInboxCall getDocumentInboxCall = GetDocumentInboxCall();
}

class GetDocumentsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OdmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDocuments',
      apiUrl: '${baseUrl}/api/documents/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostDocumentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OdmsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "",
  "email": "",
  "status": "",
  "created_by": "",
  "recipe_name": "",
  "updated_at": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postDocument',
      apiUrl: '${baseUrl}/api/documents',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDocumentCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = OdmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteDocument',
      apiUrl: '${baseUrl}/api/documents',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDocumentCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = OdmsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 0,
  "name": "",
  "email": "",
  "status": "",
  "created_by": "",
  "recipe_name": "",
  "updated_at": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateDocument',
      apiUrl: '${baseUrl}/api/documents',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSignCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OdmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSign',
      apiUrl: '${baseUrl}/api/signs/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDocumentByIdCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = OdmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDocumentById',
      apiUrl: '${baseUrl}/api/documents',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostSignCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OdmsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
    "id": "",
    "name": "",
    "email": "",
    "status": "",
    "created_by": "",
    "updated_at": "",
    "recipe_name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postSign',
      apiUrl: '${baseUrl}/api/signs',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSignCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = OdmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteSign',
      apiUrl: '${baseUrl}/api/signs',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSignCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OdmsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
    "id": "",
    "name": "",
    "email": "",
    "status": "",
    "created_by": "",
    "updated_at": "",
    "recipe_name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateSign',
      apiUrl: '${baseUrl}/api/sign',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDocumentInboxCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OdmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDocumentInbox',
      apiUrl: '${baseUrl}/api/inbox/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ODMS Group Code

/// Start SupabaseAPI Group Code

class SupabaseAPIGroup {
  static String getBaseUrl() => 'https://inuarjukgnjebgbtmhdv.supabase.co';
  static Map<String, String> headers = {};
  static UserInfoCall userInfoCall = UserInfoCall();
  static GetDocumentCall getDocumentCall = GetDocumentCall();
  static GetUploadedFileCall getUploadedFileCall = GetUploadedFileCall();
}

class UserInfoCall {
  Future<ApiCallResponse> call({
    String? apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImludWFyanVrZ25qZWJnYnRtaGR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY4MDg1NTksImV4cCI6MjA0MjM4NDU1OX0.LQGwksPluqSImfoDJ-y6QaJm7n0u6sMe7xVAA-U4PBI',
    int? id = 1,
  }) async {
    final baseUrl = SupabaseAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'userInfo',
      apiUrl: '${baseUrl}/rest/v1/users',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'Authorization': 'Baerer ${apikey}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDocumentCall {
  Future<ApiCallResponse> call({
    String? apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImludWFyanVrZ25qZWJnYnRtaGR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY4MDg1NTksImV4cCI6MjA0MjM4NDU1OX0.LQGwksPluqSImfoDJ-y6QaJm7n0u6sMe7xVAA-U4PBI',
  }) async {
    final baseUrl = SupabaseAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 410,
  "created_at": "2024-10-07T16:29:12.894",
  "size": 88.68430026235924,
  "active": true,
  "user_id": "6d6dc43a-d9a5-4445-bdb2-df8d6a4e5271",
  "trash": false,
  "type": "file",
  "updated_date": "2024-10-07T16:29:12.895",
  "sent_by": "6d6dc43a-d9a5-4445-bdb2-df8d6a4e5271",
  "user_profile": "https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/profile_pictures/1727453561037000.png",
  "path_url": "https://inuarjukgnjebgbtmhdv.supabase.co/storage/v1/object/public/dms_storage/folder/1728293351116000.pdf",
  "favorite_folder": false,
  "share_with": false,
  "status": 1,
  "tabs": 1,
  "validate_date": "2024-10-07T16:29:12.896",
  "sent_date": "2024-10-07T16:29:12.896",
  "received_date": "2024-10-07T16:29:12.896",
  "unit": "B"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDocument',
      apiUrl: '${baseUrl}/rest/v1/folder',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'Authorization': 'Baerer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUploadedFileCall {
  Future<ApiCallResponse> call({
    String? apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImludWFyanVrZ25qZWJnYnRtaGR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY4MDg1NTksImV4cCI6MjA0MjM4NDU1OX0.LQGwksPluqSImfoDJ-y6QaJm7n0u6sMe7xVAA-U4PBI',
  }) async {
    final baseUrl = SupabaseAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUploadedFile',
      apiUrl: '${baseUrl}/rest/v1/categories',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'Authorization': 'Baerer ${apikey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End SupabaseAPI Group Code

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
