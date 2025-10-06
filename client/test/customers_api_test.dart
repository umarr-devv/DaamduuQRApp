import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for CustomersApi
void main() {
  final instance = DaamduuqrClient().getCustomersApi();

  group(CustomersApi, () {
    // On Create Customer
    //
    //Future<CustomerScheme> createCustomer(CreateCustomerScheme createCustomerScheme) async
    test('test createCustomer', () async {
      // TODO
    });

  });
}
