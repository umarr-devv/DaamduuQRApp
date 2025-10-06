import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for EstablishmentsApi
void main() {
  final instance = DaamduuqrClient().getEstablishmentsApi();

  group(EstablishmentsApi, () {
    // On Add Establishment Images
    //
    //Future<EstablishmentScheme> addEstablishmentImages(String establishmentId, { List<MultipartFile> images }) async
    test('test addEstablishmentImages', () async {
      // TODO
    });

    // On Create Establishment
    //
    //Future<EstablishmentScheme> createEstablishment(String name, EstablishmentType type, String address, { String description, num latitude, num longitude, List<MultipartFile> images }) async
    test('test createEstablishment', () async {
      // TODO
    });

    // On Delete Establishment Image
    //
    //Future<EstablishmentScheme> deleteEstablishmentImage(String establishmentId, String fileId) async
    test('test deleteEstablishmentImage', () async {
      // TODO
    });

    // On Get Establishment
    //
    //Future<EstablishmentScheme> getEstablishment(String establishmentId) async
    test('test getEstablishment', () async {
      // TODO
    });

    // On Get Establishments
    //
    //Future<List<EstablishmentScheme>> getEstablishments({ int limit, int offset }) async
    test('test getEstablishments', () async {
      // TODO
    });

    // On Put Establishment
    //
    //Future<EstablishmentScheme> putEstablishmen(String establishmentId, UpdateEstablishmentScheme updateEstablishmentScheme) async
    test('test putEstablishmen', () async {
      // TODO
    });

  });
}
