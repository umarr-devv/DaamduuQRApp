import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for FilesApi
void main() {
  final instance = DaamduuqrClient().getFilesApi();

  group(FilesApi, () {
    // On Create File
    //
    //Future<FileScheme> onCreateFileApiFilesPost(MultipartFile uploadFile) async
    test('test onCreateFileApiFilesPost', () async {
      // TODO
    });

    // On Get File
    //
    //Future onGetFileApiFilesFileIdGet(String fileId) async
    test('test onGetFileApiFilesFileIdGet', () async {
      // TODO
    });

  });
}
