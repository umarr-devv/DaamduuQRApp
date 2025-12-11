import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for OrdersApi
void main() {
  final instance = DaamduuqrClient().getOrdersApi();

  group(OrdersApi, () {
    // On Create Order
    //
    //Future<OrderScheme> createOrder(CreateOrderScheme createOrderScheme) async
    test('test createOrder', () async {
      // TODO
    });

    // On Get Order
    //
    //Future<OrderScheme> getOrder(String orderId) async
    test('test getOrder', () async {
      // TODO
    });

  });
}
