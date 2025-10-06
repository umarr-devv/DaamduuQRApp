import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for RecommendationsApi
void main() {
  final instance = DaamduuqrClient().getRecommendationsApi();

  group(RecommendationsApi, () {
    // On Get Recommendations Establishments
    //
    //Future<List<EstablishmentScheme>> getRecommendationsEstablishments({ num latitude, num longitude }) async
    test('test getRecommendationsEstablishments', () async {
      // TODO
    });

    // On Get Recommendations Products
    //
    //Future<List<ProductScheme>> getRecommendationsProducts() async
    test('test getRecommendationsProducts', () async {
      // TODO
    });

  });
}
