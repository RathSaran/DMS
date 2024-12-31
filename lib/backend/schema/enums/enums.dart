import 'package:collection/collection.dart';
import "package:ffl_zfdwt1/backend/schema/enums/enums.dart" as ffl_zfdwt1_enums
    hide FFEnumExtensions, FFEnumListExtensions;

enum PieData {
  items,
}

enum UserType {
  general,
  admin,
}

enum Flag {
  add,
  edit,
  view,
  none,
}

enum DocumentsAction {
  sentOut,
  reply,
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
    case (PieData):
      return PieData.values.deserialize(value) as T?;
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    case (Flag):
      return Flag.values.deserialize(value) as T?;
    case (DocumentsAction):
      return DocumentsAction.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.UserRole):
      return ffl_zfdwt1_enums.UserRole.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.IntegrationStatus):
      return ffl_zfdwt1_enums.IntegrationStatus.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.EnvironmentType):
      return ffl_zfdwt1_enums.EnvironmentType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.SeverityLevel):
      return ffl_zfdwt1_enums.SeverityLevel.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.FileType):
      return ffl_zfdwt1_enums.FileType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.ThemeMode):
      return ffl_zfdwt1_enums.ThemeMode.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.NetworkStatus):
      return ffl_zfdwt1_enums.NetworkStatus.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.ApiStatus):
      return ffl_zfdwt1_enums.ApiStatus.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DeviceType):
      return ffl_zfdwt1_enums.DeviceType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.NotificationType):
      return ffl_zfdwt1_enums.NotificationType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DayOfWeek):
      return ffl_zfdwt1_enums.DayOfWeek.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.UserAction):
      return ffl_zfdwt1_enums.UserAction.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.ErrorType):
      return ffl_zfdwt1_enums.ErrorType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.CurrencyType):
      return ffl_zfdwt1_enums.CurrencyType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.HttpRequestMethod):
      return ffl_zfdwt1_enums.HttpRequestMethod.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DocumentStatus):
      return ffl_zfdwt1_enums.DocumentStatus.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.AccessLevel):
      return ffl_zfdwt1_enums.AccessLevel.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DocumentType):
      return ffl_zfdwt1_enums.DocumentType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DocumentAction):
      return ffl_zfdwt1_enums.DocumentAction.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.FileFormat):
      return ffl_zfdwt1_enums.FileFormat.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.FolderType):
      return ffl_zfdwt1_enums.FolderType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DocumentPriority):
      return ffl_zfdwt1_enums.DocumentPriority.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.VersionStatus):
      return ffl_zfdwt1_enums.VersionStatus.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.DocumentTag):
      return ffl_zfdwt1_enums.DocumentTag.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.ApprovalStatus):
      return ffl_zfdwt1_enums.ApprovalStatus.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.CommentType):
      return ffl_zfdwt1_enums.CommentType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.RetentionPolicy):
      return ffl_zfdwt1_enums.RetentionPolicy.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.AccessRequestStatus):
      return ffl_zfdwt1_enums.AccessRequestStatus.values.deserialize(value)
          as T?;
    case (ffl_zfdwt1_enums.SignatureType):
      return ffl_zfdwt1_enums.SignatureType.values.deserialize(value) as T?;
    case (ffl_zfdwt1_enums.NotificationDocumentType):
      return ffl_zfdwt1_enums.NotificationDocumentType.values.deserialize(value)
          as T?;
    case (ffl_zfdwt1_enums.Flag):
      return ffl_zfdwt1_enums.Flag.values.deserialize(value) as T?;
    default:
      return null;
  }
}
