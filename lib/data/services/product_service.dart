import 'dart:io';

import 'package:e_commerce_app/utils/constants/endpoints.dart';
import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:e_commerce_app/utils/network/dio/dio_client.dart';

class ProductService {
  @override
  Future<List<ProductModel>> getProductInfo() async {
    try {
      const endpoint = Endpoints.getProduct;
      final response = await dio.get(endpoint);
      final List data = response.data;

      if(response.statusCode == 200){
        return data.map((e) => ProductModel.fromJson(e)).toList();
      }

      throw Exception();
    } on SocketException catch (e) {
      throw SocketException('$e');
    } catch (e) {
      throw Exception();
    }
  }
}