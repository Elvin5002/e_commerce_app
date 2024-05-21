part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}


class ProductLoading extends ProductState{}

class ProductSuccess extends ProductState{
  ProductSuccess({required this.response});

  final List<ProductModel> response;
}

class ProductFailure extends ProductState{
  ProductFailure({required this.errorMessage});

  final String errorMessage;
}

class ProductNetworkError extends ProductState{
  ProductNetworkError({required this.errorMessage});

  final String errorMessage;
}

