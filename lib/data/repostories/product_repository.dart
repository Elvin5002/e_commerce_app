
import 'package:e_commerce_app/data/contracts/product_contract.dart';
import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:e_commerce_app/data/services/product_service.dart';

class ProductRepository implements ProductContract{
  ProductRepository(this._productService);

  final ProductService _productService;
  @override
  Future<List<ProductModel>> getProductInfo() => _productService.getProductInfo();
  
}