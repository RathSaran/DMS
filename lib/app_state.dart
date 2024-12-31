import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import "package:ffl_zfdwt1/backend/schema/enums/enums.dart" as ffl_zfdwt1_enums;
import 'package:ff_commons/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _bgColorIcon =
          _colorFromIntValue(await secureStorage.getInt('ff_bgColorIcon')) ??
              _bgColorIcon;
    });
    await _safeInitAsync(() async {
      _VersitleViewReport =
          await secureStorage.getBool('ff_VersitleViewReport') ??
              _VersitleViewReport;
    });
    await _safeInitAsync(() async {
      _isProfileUploaded =
          await secureStorage.getBool('ff_isProfileUploaded') ??
              _isProfileUploaded;
    });
    await _safeInitAsync(() async {
      _Letter = await secureStorage.getInt('ff_Letter') ?? _Letter;
    });
    await _safeInitAsync(() async {
      _Report = await secureStorage.getInt('ff_Report') ?? _Report;
    });
    await _safeInitAsync(() async {
      _ChangeRequest =
          await secureStorage.getInt('ff_ChangeRequest') ?? _ChangeRequest;
    });
    await _safeInitAsync(() async {
      _isNotifications =
          await secureStorage.getBool('ff_isNotifications') ?? _isNotifications;
    });
    await _safeInitAsync(() async {
      _pieChartLegends =
          await secureStorage.getStringList('ff_pieChartLegends') ??
              _pieChartLegends;
    });
    await _safeInitAsync(() async {
      _pieChartValues = (await secureStorage.getStringList('ff_pieChartValues'))
              ?.map(int.parse)
              .toList() ??
          _pieChartValues;
    });
    await _safeInitAsync(() async {
      _switchUserAccount =
          (await secureStorage.getStringList('ff_switchUserAccount'))?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _switchUserAccount;
    });
    await _safeInitAsync(() async {
      _documentUploaded =
          await secureStorage.getStringList('ff_documentUploaded') ??
              _documentUploaded;
    });
    await _safeInitAsync(() async {
      _userOrganizations =
          (await secureStorage.getStringList('ff_userOrganizations'))?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _userOrganizations;
    });
    await _safeInitAsync(() async {
      _userIds = await secureStorage.getStringList('ff_userIds') ?? _userIds;
    });
    await _safeInitAsync(() async {
      _departmentId =
          await secureStorage.getStringList('ff_departmentId') ?? _departmentId;
    });
    await _safeInitAsync(() async {
      _isorganizationselect =
          await secureStorage.getBool('ff_isorganizationselect') ??
              _isorganizationselect;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  Color _bgColorIcon = Color(4285489647);
  Color get bgColorIcon => _bgColorIcon;
  set bgColorIcon(Color value) {
    _bgColorIcon = value;
    secureStorage.setInt('ff_bgColorIcon', value.value);
  }

  void deleteBgColorIcon() {
    secureStorage.delete(key: 'ff_bgColorIcon');
  }

  bool _VersitleViewReport = false;
  bool get VersitleViewReport => _VersitleViewReport;
  set VersitleViewReport(bool value) {
    _VersitleViewReport = value;
    secureStorage.setBool('ff_VersitleViewReport', value);
  }

  void deleteVersitleViewReport() {
    secureStorage.delete(key: 'ff_VersitleViewReport');
  }

  bool _switchViewGridDoc = false;
  bool get switchViewGridDoc => _switchViewGridDoc;
  set switchViewGridDoc(bool value) {
    _switchViewGridDoc = value;
  }

  bool _isEditProfile = false;
  bool get isEditProfile => _isEditProfile;
  set isEditProfile(bool value) {
    _isEditProfile = value;
  }

  bool _isProfileUploaded = false;
  bool get isProfileUploaded => _isProfileUploaded;
  set isProfileUploaded(bool value) {
    _isProfileUploaded = value;
    secureStorage.setBool('ff_isProfileUploaded', value);
  }

  void deleteIsProfileUploaded() {
    secureStorage.delete(key: 'ff_isProfileUploaded');
  }

  bool _enableNotification = false;
  bool get enableNotification => _enableNotification;
  set enableNotification(bool value) {
    _enableNotification = value;
  }

  bool _enableAnnoucement = false;
  bool get enableAnnoucement => _enableAnnoucement;
  set enableAnnoucement(bool value) {
    _enableAnnoucement = value;
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  int _role = 0;
  int get role => _role;
  set role(int value) {
    _role = value;
  }

  String _profileUrl = '';
  String get profileUrl => _profileUrl;
  set profileUrl(String value) {
    _profileUrl = value;
  }

  int _Letter = 30;
  int get Letter => _Letter;
  set Letter(int value) {
    _Letter = value;
    secureStorage.setInt('ff_Letter', value);
  }

  void deleteLetter() {
    secureStorage.delete(key: 'ff_Letter');
  }

  int _Report = 40;
  int get Report => _Report;
  set Report(int value) {
    _Report = value;
    secureStorage.setInt('ff_Report', value);
  }

  void deleteReport() {
    secureStorage.delete(key: 'ff_Report');
  }

  int _ChangeRequest = 30;
  int get ChangeRequest => _ChangeRequest;
  set ChangeRequest(int value) {
    _ChangeRequest = value;
    secureStorage.setInt('ff_ChangeRequest', value);
  }

  void deleteChangeRequest() {
    secureStorage.delete(key: 'ff_ChangeRequest');
  }

  bool _isNotifications = false;
  bool get isNotifications => _isNotifications;
  set isNotifications(bool value) {
    _isNotifications = value;
    secureStorage.setBool('ff_isNotifications', value);
  }

  void deleteIsNotifications() {
    secureStorage.delete(key: 'ff_isNotifications');
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  String _attachments = '';
  String get attachments => _attachments;
  set attachments(String value) {
    _attachments = value;
  }

  List<String> _pieChartLegends = [
    'របាយការណ៍',
    'លិខិតស្នើរសុំ',
    'សេចក្ដីសម្រេច'
  ];
  List<String> get pieChartLegends => _pieChartLegends;
  set pieChartLegends(List<String> value) {
    _pieChartLegends = value;
    secureStorage.setStringList('ff_pieChartLegends', value);
  }

  void deletePieChartLegends() {
    secureStorage.delete(key: 'ff_pieChartLegends');
  }

  void addToPieChartLegends(String value) {
    pieChartLegends.add(value);
    secureStorage.setStringList('ff_pieChartLegends', _pieChartLegends);
  }

  void removeFromPieChartLegends(String value) {
    pieChartLegends.remove(value);
    secureStorage.setStringList('ff_pieChartLegends', _pieChartLegends);
  }

  void removeAtIndexFromPieChartLegends(int index) {
    pieChartLegends.removeAt(index);
    secureStorage.setStringList('ff_pieChartLegends', _pieChartLegends);
  }

  void updatePieChartLegendsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pieChartLegends[index] = updateFn(_pieChartLegends[index]);
    secureStorage.setStringList('ff_pieChartLegends', _pieChartLegends);
  }

  void insertAtIndexInPieChartLegends(int index, String value) {
    pieChartLegends.insert(index, value);
    secureStorage.setStringList('ff_pieChartLegends', _pieChartLegends);
  }

  List<int> _pieChartValues = [14, 23, 35];
  List<int> get pieChartValues => _pieChartValues;
  set pieChartValues(List<int> value) {
    _pieChartValues = value;
    secureStorage.setStringList(
        'ff_pieChartValues', value.map((x) => x.toString()).toList());
  }

  void deletePieChartValues() {
    secureStorage.delete(key: 'ff_pieChartValues');
  }

  void addToPieChartValues(int value) {
    pieChartValues.add(value);
    secureStorage.setStringList(
        'ff_pieChartValues', _pieChartValues.map((x) => x.toString()).toList());
  }

  void removeFromPieChartValues(int value) {
    pieChartValues.remove(value);
    secureStorage.setStringList(
        'ff_pieChartValues', _pieChartValues.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPieChartValues(int index) {
    pieChartValues.removeAt(index);
    secureStorage.setStringList(
        'ff_pieChartValues', _pieChartValues.map((x) => x.toString()).toList());
  }

  void updatePieChartValuesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    pieChartValues[index] = updateFn(_pieChartValues[index]);
    secureStorage.setStringList(
        'ff_pieChartValues', _pieChartValues.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPieChartValues(int index, int value) {
    pieChartValues.insert(index, value);
    secureStorage.setStringList(
        'ff_pieChartValues', _pieChartValues.map((x) => x.toString()).toList());
  }

  List<dynamic> _switchUserAccount = [];
  List<dynamic> get switchUserAccount => _switchUserAccount;
  set switchUserAccount(List<dynamic> value) {
    _switchUserAccount = value;
    secureStorage.setStringList(
        'ff_switchUserAccount', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteSwitchUserAccount() {
    secureStorage.delete(key: 'ff_switchUserAccount');
  }

  void addToSwitchUserAccount(dynamic value) {
    switchUserAccount.add(value);
    secureStorage.setStringList('ff_switchUserAccount',
        _switchUserAccount.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSwitchUserAccount(dynamic value) {
    switchUserAccount.remove(value);
    secureStorage.setStringList('ff_switchUserAccount',
        _switchUserAccount.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSwitchUserAccount(int index) {
    switchUserAccount.removeAt(index);
    secureStorage.setStringList('ff_switchUserAccount',
        _switchUserAccount.map((x) => jsonEncode(x)).toList());
  }

  void updateSwitchUserAccountAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    switchUserAccount[index] = updateFn(_switchUserAccount[index]);
    secureStorage.setStringList('ff_switchUserAccount',
        _switchUserAccount.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInSwitchUserAccount(int index, dynamic value) {
    switchUserAccount.insert(index, value);
    secureStorage.setStringList('ff_switchUserAccount',
        _switchUserAccount.map((x) => jsonEncode(x)).toList());
  }

  int _allCounts = 0;
  int get allCounts => _allCounts;
  set allCounts(int value) {
    _allCounts = value;
  }

  int _sentCounts = 0;
  int get sentCounts => _sentCounts;
  set sentCounts(int value) {
    _sentCounts = value;
  }

  int _inboxCounts = 0;
  int get inboxCounts => _inboxCounts;
  set inboxCounts(int value) {
    _inboxCounts = value;
  }

  int _favoriteCounts = 0;
  int get favoriteCounts => _favoriteCounts;
  set favoriteCounts(int value) {
    _favoriteCounts = value;
  }

  List<String> _serverity = [];
  List<String> get serverity => _serverity;
  set serverity(List<String> value) {
    _serverity = value;
  }

  void addToServerity(String value) {
    serverity.add(value);
  }

  void removeFromServerity(String value) {
    serverity.remove(value);
  }

  void removeAtIndexFromServerity(int index) {
    serverity.removeAt(index);
  }

  void updateServerityAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    serverity[index] = updateFn(_serverity[index]);
  }

  void insertAtIndexInServerity(int index, String value) {
    serverity.insert(index, value);
  }

  String _filterDepartment = '';
  String get filterDepartment => _filterDepartment;
  set filterDepartment(String value) {
    _filterDepartment = value;
  }

  List<String> _documentUploaded = [];
  List<String> get documentUploaded => _documentUploaded;
  set documentUploaded(List<String> value) {
    _documentUploaded = value;
    secureStorage.setStringList('ff_documentUploaded', value);
  }

  void deleteDocumentUploaded() {
    secureStorage.delete(key: 'ff_documentUploaded');
  }

  void addToDocumentUploaded(String value) {
    documentUploaded.add(value);
    secureStorage.setStringList('ff_documentUploaded', _documentUploaded);
  }

  void removeFromDocumentUploaded(String value) {
    documentUploaded.remove(value);
    secureStorage.setStringList('ff_documentUploaded', _documentUploaded);
  }

  void removeAtIndexFromDocumentUploaded(int index) {
    documentUploaded.removeAt(index);
    secureStorage.setStringList('ff_documentUploaded', _documentUploaded);
  }

  void updateDocumentUploadedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    documentUploaded[index] = updateFn(_documentUploaded[index]);
    secureStorage.setStringList('ff_documentUploaded', _documentUploaded);
  }

  void insertAtIndexInDocumentUploaded(int index, String value) {
    documentUploaded.insert(index, value);
    secureStorage.setStringList('ff_documentUploaded', _documentUploaded);
  }

  List<dynamic> _userOrganizations = [];
  List<dynamic> get userOrganizations => _userOrganizations;
  set userOrganizations(List<dynamic> value) {
    _userOrganizations = value;
    secureStorage.setStringList(
        'ff_userOrganizations', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteUserOrganizations() {
    secureStorage.delete(key: 'ff_userOrganizations');
  }

  void addToUserOrganizations(dynamic value) {
    userOrganizations.add(value);
    secureStorage.setStringList('ff_userOrganizations',
        _userOrganizations.map((x) => jsonEncode(x)).toList());
  }

  void removeFromUserOrganizations(dynamic value) {
    userOrganizations.remove(value);
    secureStorage.setStringList('ff_userOrganizations',
        _userOrganizations.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromUserOrganizations(int index) {
    userOrganizations.removeAt(index);
    secureStorage.setStringList('ff_userOrganizations',
        _userOrganizations.map((x) => jsonEncode(x)).toList());
  }

  void updateUserOrganizationsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    userOrganizations[index] = updateFn(_userOrganizations[index]);
    secureStorage.setStringList('ff_userOrganizations',
        _userOrganizations.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInUserOrganizations(int index, dynamic value) {
    userOrganizations.insert(index, value);
    secureStorage.setStringList('ff_userOrganizations',
        _userOrganizations.map((x) => jsonEncode(x)).toList());
  }

  List<String> _userIds = [''];
  List<String> get userIds => _userIds;
  set userIds(List<String> value) {
    _userIds = value;
    secureStorage.setStringList('ff_userIds', value);
  }

  void deleteUserIds() {
    secureStorage.delete(key: 'ff_userIds');
  }

  void addToUserIds(String value) {
    userIds.add(value);
    secureStorage.setStringList('ff_userIds', _userIds);
  }

  void removeFromUserIds(String value) {
    userIds.remove(value);
    secureStorage.setStringList('ff_userIds', _userIds);
  }

  void removeAtIndexFromUserIds(int index) {
    userIds.removeAt(index);
    secureStorage.setStringList('ff_userIds', _userIds);
  }

  void updateUserIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userIds[index] = updateFn(_userIds[index]);
    secureStorage.setStringList('ff_userIds', _userIds);
  }

  void insertAtIndexInUserIds(int index, String value) {
    userIds.insert(index, value);
    secureStorage.setStringList('ff_userIds', _userIds);
  }

  List<String> _departmentId = [];
  List<String> get departmentId => _departmentId;
  set departmentId(List<String> value) {
    _departmentId = value;
    secureStorage.setStringList('ff_departmentId', value);
  }

  void deleteDepartmentId() {
    secureStorage.delete(key: 'ff_departmentId');
  }

  void addToDepartmentId(String value) {
    departmentId.add(value);
    secureStorage.setStringList('ff_departmentId', _departmentId);
  }

  void removeFromDepartmentId(String value) {
    departmentId.remove(value);
    secureStorage.setStringList('ff_departmentId', _departmentId);
  }

  void removeAtIndexFromDepartmentId(int index) {
    departmentId.removeAt(index);
    secureStorage.setStringList('ff_departmentId', _departmentId);
  }

  void updateDepartmentIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    departmentId[index] = updateFn(_departmentId[index]);
    secureStorage.setStringList('ff_departmentId', _departmentId);
  }

  void insertAtIndexInDepartmentId(int index, String value) {
    departmentId.insert(index, value);
    secureStorage.setStringList('ff_departmentId', _departmentId);
  }

  int _notificationsCounts = 0;
  int get notificationsCounts => _notificationsCounts;
  set notificationsCounts(int value) {
    _notificationsCounts = value;
  }

  Color _globalColor = Color(4285489647);
  Color get globalColor => _globalColor;
  set globalColor(Color value) {
    _globalColor = value;
  }

  bool _isorganizationselect = false;
  bool get isorganizationselect => _isorganizationselect;
  set isorganizationselect(bool value) {
    _isorganizationselect = value;
    secureStorage.setBool('ff_isorganizationselect', value);
  }

  void deleteIsorganizationselect() {
    secureStorage.delete(key: 'ff_isorganizationselect');
  }

  bool _isClicked = false;
  bool get isClicked => _isClicked;
  set isClicked(bool value) {
    _isClicked = value;
  }

  Color _clickcolor = Colors.transparent;
  Color get clickcolor => _clickcolor;
  set clickcolor(Color value) {
    _clickcolor = value;
  }

  bool _isKhmerSelected = false;
  bool get isKhmerSelected => _isKhmerSelected;
  set isKhmerSelected(bool value) {
    _isKhmerSelected = value;
  }

  bool _focusColor = false;
  bool get focusColor => _focusColor;
  set focusColor(bool value) {
    _focusColor = value;
  }

  String _selectedFontStyle = '';
  String get selectedFontStyle => _selectedFontStyle;
  set selectedFontStyle(String value) {
    _selectedFontStyle = value;
  }

  String _onTab = '';
  String get onTab => _onTab;
  set onTab(String value) {
    _onTab = value;
  }

  bool _showdata = false;
  bool get showdata => _showdata;
  set showdata(bool value) {
    _showdata = value;
  }

  final _serverityCachedManager = FutureRequestManager<List<SeverityRow>>();
  Future<List<SeverityRow>> serverityCached({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<SeverityRow>> Function() requestFn,
  }) =>
      _serverityCachedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearServerityCachedCache() => _serverityCachedManager.clear();
  void clearServerityCachedCacheKey(String? uniqueKey) =>
      _serverityCachedManager.clearRequest(uniqueKey);

  final _filderOrganizationsManager =
      FutureRequestManager<List<DepartmentsRow>>();
  Future<List<DepartmentsRow>> filderOrganizations({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<DepartmentsRow>> Function() requestFn,
  }) =>
      _filderOrganizationsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFilderOrganizationsCache() => _filderOrganizationsManager.clear();
  void clearFilderOrganizationsCacheKey(String? uniqueKey) =>
      _filderOrganizationsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
