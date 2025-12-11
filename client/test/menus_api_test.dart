import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for MenusApi
void main() {
  final instance = DaamduuqrClient().getMenusApi();

  group(MenusApi, () {
    // On Create Menu
    //
    //Future<MenuScheme> createMenu(CreateMenuScheme createMenuScheme) async
    test('test createMenu', () async {
      // TODO
    });

    // On Delete Menu Products
    //
    //Future<List<ProductScheme>> deleteMenuProducts(String menuId, MenuAddProductScheme menuAddProductScheme) async
    test('test deleteMenuProducts', () async {
      // TODO
    });

    // On Get Menu
    //
    //Future<MenuScheme> getMenu(String menuId) async
    test('test getMenu', () async {
      // TODO
    });

    // On Get Menu Products
    //
    //Future<List<ProductScheme>> getMenuProducts(String menuId) async
    test('test getMenuProducts', () async {
      // TODO
    });

    // On Menu Add Products
    //
    //Future<List<ProductScheme>> menuAddProducts(String menuId, MenuDeleteProductScheme menuDeleteProductScheme) async
    test('test menuAddProducts', () async {
      // TODO
    });

    // On Update Menu
    //
    //Future<MenuScheme> updateMenu(String menuId, UpdateMenuScheme updateMenuScheme) async
    test('test updateMenu', () async {
      // TODO
    });

  });
}
