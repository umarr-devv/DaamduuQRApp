import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for OrganizationsApi
void main() {
  final instance = DaamduuqrClient().getOrganizationsApi();

  group(OrganizationsApi, () {
    // On Create Organization
    //
    //Future<OrganizationScheme> createOrganization(CreateOrganizationScheme createOrganizationScheme) async
    test('test createOrganization', () async {
      // TODO
    });

    // On Get Organization
    //
    //Future<OrganizationScheme> getOrganization(String organizationId) async
    test('test getOrganization', () async {
      // TODO
    });

    // On Get Organization Categories
    //
    //Future<List<CategoryScheme>> getOrganizationCategories(String organizationId) async
    test('test getOrganizationCategories', () async {
      // TODO
    });

    // On Get Organization Establishments
    //
    //Future<List<EstablishmentScheme>> getOrganizationEstablishments(String organizationId) async
    test('test getOrganizationEstablishments', () async {
      // TODO
    });

    // On Get Organization Menus
    //
    //Future<List<MenuScheme>> getOrganizationMenus(String organizationId) async
    test('test getOrganizationMenus', () async {
      // TODO
    });

    // On Get Organization Place Types
    //
    //Future<List<PlaceTypeScheme>> getOrganizationPlaceTypes(String organizationId) async
    test('test getOrganizationPlaceTypes', () async {
      // TODO
    });

    // On Update Organization
    //
    //Future<OrganizationScheme> updateOrganization(String organizationId, UpdateOrganizationScheme updateOrganizationScheme) async
    test('test updateOrganization', () async {
      // TODO
    });

  });
}
