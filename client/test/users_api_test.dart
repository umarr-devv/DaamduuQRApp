import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for UsersApi
void main() {
  final instance = DaamduuqrClient().getUsersApi();

  group(UsersApi, () {
    // On Add User Image
    //
    //Future<UserScheme> addUserImage(String jwtToken, MultipartFile file) async
    test('test addUserImage', () async {
      // TODO
    });

    // On Create User
    //
    //Future<UserScheme> createUser(CreateUserScheme createUserScheme) async
    test('test createUser', () async {
      // TODO
    });

    // On Delete User Image
    //
    //Future<UserScheme> deleteUserImage(String fileId, String jwtToken) async
    test('test deleteUserImage', () async {
      // TODO
    });

    // On Get User
    //
    //Future<UserScheme> getUser(String jwtToken) async
    test('test getUser', () async {
      // TODO
    });

    // On Login User
    //
    //Future<TokenScheme> loginUser(LoginUserScheme loginUserScheme) async
    test('test loginUser', () async {
      // TODO
    });

    // On Update User
    //
    //Future<UserScheme> updateUser(String jwtToken, UpdateUserScheme updateUserScheme) async
    test('test updateUser', () async {
      // TODO
    });

  });
}
