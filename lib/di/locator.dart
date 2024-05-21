import 'package:e_commerce_app/data/contracts/product_contract.dart';
import 'package:e_commerce_app/data/repostories/product_repository.dart';
import 'package:e_commerce_app/data/services/product_service.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async{
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton<ProductContract>(() => ProductRepository(locator()));
}