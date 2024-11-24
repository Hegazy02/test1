import '../../../core/enums/status_enum.dart';

class WishListState {
  Status products;
  String errorMessage;
  int selectedFilterIndex;

  WishListState({
    this.products = Status.initial,
    this.errorMessage = '',
    this.selectedFilterIndex = 0,
  });

  WishListState copyWith(
      {String? errorMessage, Status? products, int? selectedFilterIndex}) {
    return WishListState(
        errorMessage: errorMessage ?? this.errorMessage,
        products: products ?? this.products,
        selectedFilterIndex: selectedFilterIndex ?? this.selectedFilterIndex);
  }

  @override
  bool operator ==(covariant WishListState other) {
    if (identical(this, other)) return true;

    return other.errorMessage == errorMessage &&
        other.selectedFilterIndex == selectedFilterIndex &&
        other.products == products;
  }

  @override
  int get hashCode =>
      errorMessage.hashCode ^ selectedFilterIndex.hashCode ^ products.hashCode;
}
