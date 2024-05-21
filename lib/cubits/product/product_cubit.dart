import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:e_commerce_app/data/services/product_service.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productService) : super(ProductInitial());

  final BehaviorSubject<int> viewSubject = BehaviorSubject.seeded(0);

  final ProductService _productService;

  void getProoductInfo() async{
    try {
      emit(ProductLoading());
      final result = await _productService.getProductInfo();
      emit(ProductSuccess(response: result));
    } on SocketException catch (e) {
      emit(ProductNetworkError(errorMessage: 'Network errror'));
    } catch(e){
      emit(ProductFailure(errorMessage: 'Error'));
    }
  }

  @override
  Future<void> close() {
    viewSubject.close();
    return super.close();
  }
}
