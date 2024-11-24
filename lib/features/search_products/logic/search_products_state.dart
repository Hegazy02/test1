import '../../../core/enums/status_enum.dart';

class CustomerSearchProductsState {
  Status products;
  String errorMessage;

  CustomerSearchProductsState({
    this.products = Status.initial,
    this.errorMessage = '',
  });

  CustomerSearchProductsState copyWith({
    String? errorMessage,
    Status? products,
  }) {
    return CustomerSearchProductsState(
      errorMessage: errorMessage ?? this.errorMessage,
      products: products ?? this.products,
    );
  }

  CustomerSearchProductsState clearState() => CustomerSearchProductsState();
  @override
  bool operator ==(covariant CustomerSearchProductsState other) {
    if (identical(this, other)) return true;

    return other.errorMessage == errorMessage && other.products == products;
  }

  @override
  int get hashCode => errorMessage.hashCode ^ products.hashCode;
}
