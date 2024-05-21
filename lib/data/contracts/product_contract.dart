import '../models/product_model.dart';

abstract class ProductContract {
  Future<List<ProductModel>> getProductInfo();
}