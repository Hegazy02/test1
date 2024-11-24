import '../../../core/enums/status_enum.dart';

class SettingsState {
  Status languageStatus;
  Status status;
  Status themeModeStatus;
  String? errorMessage;

  SettingsState({
    this.languageStatus = Status.initial,
    this.status = Status.initial,
    this.themeModeStatus = Status.initial,
    this.errorMessage,
  });

  SettingsState copyWith(
      {Status? languageStatus,
      String? errorMessage,
      Status? themeModeStatus,
      Status? status}) {
    return SettingsState(
        status: status ?? this.status,
        languageStatus: languageStatus ?? this.languageStatus,
        errorMessage: errorMessage ?? this.errorMessage,
        themeModeStatus: themeModeStatus ?? this.themeModeStatus);
  }
}
