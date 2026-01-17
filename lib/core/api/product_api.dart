import 'package:davaistore_mobile/core/api/dio_client.dart';
import 'package:davaistore_mobile/core/model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'product_api.g.dart';

final productApiProvider = Provider<ProductApi>((ref) {
  return ProductApi(ref.read(dioProvider));
});

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio, {String? baseUrl}) = _ProductApi;
  @GET('products')
  Future<List<ProductModel>> getProducts();
  // @POST('users')
  // Future<UserModel> createUser(@Body() Map<String, dynamic> body);
}
