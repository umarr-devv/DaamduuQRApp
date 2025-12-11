//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:daamduuqr_client/src/auth/api_key_auth.dart';
import 'package:daamduuqr_client/src/auth/basic_auth.dart';
import 'package:daamduuqr_client/src/auth/bearer_auth.dart';
import 'package:daamduuqr_client/src/auth/oauth.dart';
import 'package:daamduuqr_client/src/api/categories_api.dart';
import 'package:daamduuqr_client/src/api/contacts_api.dart';
import 'package:daamduuqr_client/src/api/customers_api.dart';
import 'package:daamduuqr_client/src/api/default_api.dart';
import 'package:daamduuqr_client/src/api/establishments_api.dart';
import 'package:daamduuqr_client/src/api/files_api.dart';
import 'package:daamduuqr_client/src/api/health_api.dart';
import 'package:daamduuqr_client/src/api/menus_api.dart';
import 'package:daamduuqr_client/src/api/messaging_api.dart';
import 'package:daamduuqr_client/src/api/orders_api.dart';
import 'package:daamduuqr_client/src/api/organizations_api.dart';
import 'package:daamduuqr_client/src/api/places_api.dart';
import 'package:daamduuqr_client/src/api/products_api.dart';
import 'package:daamduuqr_client/src/api/recommendations_api.dart';
import 'package:daamduuqr_client/src/api/search_api.dart';
import 'package:daamduuqr_client/src/api/stories_api.dart';
import 'package:daamduuqr_client/src/api/users_api.dart';

class DaamduuqrClient {
  static const String basePath = r'http://localhost';

  final Dio dio;
  DaamduuqrClient({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : 
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get CategoriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CategoriesApi getCategoriesApi() {
    return CategoriesApi(dio);
  }

  /// Get ContactsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContactsApi getContactsApi() {
    return ContactsApi(dio);
  }

  /// Get CustomersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomersApi getCustomersApi() {
    return CustomersApi(dio);
  }

  /// Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DefaultApi getDefaultApi() {
    return DefaultApi(dio);
  }

  /// Get EstablishmentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EstablishmentsApi getEstablishmentsApi() {
    return EstablishmentsApi(dio);
  }

  /// Get FilesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FilesApi getFilesApi() {
    return FilesApi(dio);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio);
  }

  /// Get MenusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MenusApi getMenusApi() {
    return MenusApi(dio);
  }

  /// Get MessagingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MessagingApi getMessagingApi() {
    return MessagingApi(dio);
  }

  /// Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrdersApi getOrdersApi() {
    return OrdersApi(dio);
  }

  /// Get OrganizationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrganizationsApi getOrganizationsApi() {
    return OrganizationsApi(dio);
  }

  /// Get PlacesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PlacesApi getPlacesApi() {
    return PlacesApi(dio);
  }

  /// Get ProductsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProductsApi getProductsApi() {
    return ProductsApi(dio);
  }

  /// Get RecommendationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecommendationsApi getRecommendationsApi() {
    return RecommendationsApi(dio);
  }

  /// Get SearchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SearchApi getSearchApi() {
    return SearchApi(dio);
  }

  /// Get StoriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StoriesApi getStoriesApi() {
    return StoriesApi(dio);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio);
  }
}
