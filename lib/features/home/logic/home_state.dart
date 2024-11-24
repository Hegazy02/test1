import '../../../core/enums/status_enum.dart';

class HomeState {
  Status products;
  String errorMessage;
  int selectedFilterIndex;

  HomeState({
    this.products = Status.initial,
    this.errorMessage = '',
    this.selectedFilterIndex = 0,
  });

  HomeState copyWith(
      {String? errorMessage, Status? products, int? selectedFilterIndex}) {
    return HomeState(
        errorMessage: errorMessage ?? this.errorMessage,
        products: products ?? this.products,
        selectedFilterIndex: selectedFilterIndex ?? this.selectedFilterIndex);
  }
}
