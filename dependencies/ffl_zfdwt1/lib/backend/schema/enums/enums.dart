import 'package:collection/collection.dart';

enum UserRole {
  admin,
  editor,
  viewer,
  guest,
  contributor,
}

enum IntegrationStatus {
  connected,
  disconnected,
  syncing,
  error,
}

enum EnvironmentType {
  development,
  staging,
  production,
  testing,
}

enum SeverityLevel {
  low,
  medium,
  high,
  critical,
  informational,
}

enum FileType {
  document,
  image,
  video,
  audio,
  spreadsheet,
  presentation,
  pdf,
  archive,
}

enum ThemeMode {
  light,
  dark,
  system,
}

enum NetworkStatus {
  connected,
  disconnected,
  connecting,
  error,
}

enum ApiStatus {
  idle,
  loading,
  success,
  error,
}

enum DeviceType {
  mobile,
  tablet,
  desktop,
  wearable,
  tv,
}

enum NotificationType {
  message,
  alert,
  reminder,
  warning,
  update,
}

enum DayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

enum UserAction {
  login,
  logout,
  signup,
  passwordReset,
  profileUpdate,
}

enum ErrorType {
  network,
  authentication,
  server,
  validation,
  timeout,
  unknown,
}

enum CurrencyType {
  usd,
  eur,
  gbp,
  jpy,
  aud,
  khr,
}

enum HttpRequestMethod {
  get,
  post,
  put,
  delete,
  patch,
  options,
}

enum DocumentStatus {
  draft,
  underReview,
  approved,
  rejected,
  archived,
  published,
  deleted,
}

enum AccessLevel {
  owner,
  editor,
  viewer,
  commenter,
  restricted,
}

enum DocumentType {
  report,
  invoice,
  contract,
  presentation,
  spreadsheet,
  policy,
  procedure,
  memo,
  guideline,
  form,
  correspondence,
  legal,
}

enum DocumentAction {
  created,
  updated,
  deleted,
  viewed,
  shared,
  downloaded,
  favorited,
  moved,
  copied,
  commented,
  tagged,
}

enum FileFormat {
  pdf,
  docx,
  xlsx,
  pptx,
  txt,
  jpg,
  png,
  svg,
  html,
  zip,
  csv,
}

enum FolderType {
  root,
  shared,
  personal,
  team,
  archive,
  trash,
  project,
}

enum DocumentPriority {
  low,
  medium,
  high,
  urgent,
}

enum VersionStatus {
  initial,
  revised,
  obsolete,
  current,
}

enum DocumentTag {
  confidential,
  internalUseOnly,
  public,
  financial,
  legal,
  hr,
  technical,
  marketing,
}

enum ApprovalStatus {
  notSubmitted,
  pending,
  approved,
  rejected,
  escalated,
  revised,
}

enum CommentType {
  general,
  suggestion,
  issue,
  clarification,
}

enum RetentionPolicy {
  permanent,
  shortTerm,
  longTerm,
  legalHold,
  scheduledDeletion,
}

enum AccessRequestStatus {
  pending,
  granted,
  denied,
  expired,
}

enum SignatureType {
  wet,
  digital,
  electronic,
  certified,
}

enum NotificationDocumentType {
  documentUpdate,
  approvalRequest,
  commentMention,
  shareNotification,
  expirationWarning,
}

enum Flag {
  none,
  view,
  add,
  edit,
  delete,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UserRole):
      return UserRole.values.deserialize(value) as T?;
    case (IntegrationStatus):
      return IntegrationStatus.values.deserialize(value) as T?;
    case (EnvironmentType):
      return EnvironmentType.values.deserialize(value) as T?;
    case (SeverityLevel):
      return SeverityLevel.values.deserialize(value) as T?;
    case (FileType):
      return FileType.values.deserialize(value) as T?;
    case (ThemeMode):
      return ThemeMode.values.deserialize(value) as T?;
    case (NetworkStatus):
      return NetworkStatus.values.deserialize(value) as T?;
    case (ApiStatus):
      return ApiStatus.values.deserialize(value) as T?;
    case (DeviceType):
      return DeviceType.values.deserialize(value) as T?;
    case (NotificationType):
      return NotificationType.values.deserialize(value) as T?;
    case (DayOfWeek):
      return DayOfWeek.values.deserialize(value) as T?;
    case (UserAction):
      return UserAction.values.deserialize(value) as T?;
    case (ErrorType):
      return ErrorType.values.deserialize(value) as T?;
    case (CurrencyType):
      return CurrencyType.values.deserialize(value) as T?;
    case (HttpRequestMethod):
      return HttpRequestMethod.values.deserialize(value) as T?;
    case (DocumentStatus):
      return DocumentStatus.values.deserialize(value) as T?;
    case (AccessLevel):
      return AccessLevel.values.deserialize(value) as T?;
    case (DocumentType):
      return DocumentType.values.deserialize(value) as T?;
    case (DocumentAction):
      return DocumentAction.values.deserialize(value) as T?;
    case (FileFormat):
      return FileFormat.values.deserialize(value) as T?;
    case (FolderType):
      return FolderType.values.deserialize(value) as T?;
    case (DocumentPriority):
      return DocumentPriority.values.deserialize(value) as T?;
    case (VersionStatus):
      return VersionStatus.values.deserialize(value) as T?;
    case (DocumentTag):
      return DocumentTag.values.deserialize(value) as T?;
    case (ApprovalStatus):
      return ApprovalStatus.values.deserialize(value) as T?;
    case (CommentType):
      return CommentType.values.deserialize(value) as T?;
    case (RetentionPolicy):
      return RetentionPolicy.values.deserialize(value) as T?;
    case (AccessRequestStatus):
      return AccessRequestStatus.values.deserialize(value) as T?;
    case (SignatureType):
      return SignatureType.values.deserialize(value) as T?;
    case (NotificationDocumentType):
      return NotificationDocumentType.values.deserialize(value) as T?;
    case (Flag):
      return Flag.values.deserialize(value) as T?;
    default:
      return null;
  }
}
