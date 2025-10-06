import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for CategoriesApi
void main() {
  final instance = DaamduuqrClient().getCategoriesApi();

  group(CategoriesApi, () {
    // On Create Categoiry
    //
    //Future<CategoryScheme> createCategory(CreateCategoryScheme createCategoryScheme) async
    test('test createCategory', () async {
      // TODO
    });

    // On Get Category
    //
    //Future<CategoryScheme> getCategory(String categoryId) async
    test('test getCategory', () async {
      // TODO
    });

    // On Update Category
    //
    //Future<CategoryScheme> updateCategory(String categoryId, UpdateCategoryScheme updateCategoryScheme) async
    test('test updateCategory', () async {
      // TODO
    });

  });
}
