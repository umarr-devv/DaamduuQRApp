import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for ProductsApi
void main() {
  final instance = DaamduuqrClient().getProductsApi();

  group(ProductsApi, () {
    // On Add Product Image
    //
    //Future<ProductScheme> addProductImage(String productId, { List<MultipartFile> images }) async
    test('test addProductImage', () async {
      // TODO
    });

    // On Add Product Portion
    //
    //Future<ProductScheme> addProductPortion(String productId, CreatePortionScheme createPortionScheme) async
    test('test addProductPortion', () async {
      // TODO
    });

    // On Create Product
    //
    //Future<ProductScheme> createProduct(CreateProductScheme createProductScheme) async
    test('test createProduct', () async {
      // TODO
    });

    // On Delete Product Image
    //
    //Future<ProductScheme> deleteProductImage(String productId, String fileId) async
    test('test deleteProductImage', () async {
      // TODO
    });

    // On Delete Product Portion
    //
    //Future<ProductScheme> deleteProductPortion(String productId, String portionId) async
    test('test deleteProductPortion', () async {
      // TODO
    });

    // On Get Product
    //
    //Future<ProductScheme> getProduct(String productId) async
    test('test getProduct', () async {
      // TODO
    });

    // On Update Product
    //
    //Future<ProductScheme> updateProduct(String productId, UpdateProductScheme updateProductScheme) async
    test('test updateProduct', () async {
      // TODO
    });

    // On Update Product Portion
    //
    //Future<ProductScheme> updateProductPortion(String productId, String portionId, UpdatePortionScheme updatePortionScheme) async
    test('test updateProductPortion', () async {
      // TODO
    });

  });
}
