import '../../../core/enums/status_enum.dart';

class MainState {
  Status status;

  MainState({
    this.status = Status.initial,
  });

  MainState copyWith({
    Status? status,
  }) {
    return MainState(
      status: status ?? this.status,
    );
  }
}
