import 'package:daamduuqr_client/daamduuqr_client.dart';

extension EstablishmentExtension on DetailEstablishmentScheme {
  EstablishmentScheme getDefault() {
    return EstablishmentScheme(
      id: id,
      createAt: createAt,
      updateAt: updateAt,
      name: name,
      organizationId: organizationId,
      type: type,
      description: description,
      address: address,
      latitude: latitude,
      longitude: longitude,
      menuId: menuId,
      menu: menu,
      images: images,
    );
  }
}
