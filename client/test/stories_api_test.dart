import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for StoriesApi
void main() {
  final instance = DaamduuqrClient().getStoriesApi();

  group(StoriesApi, () {
    // On Add Story Content
    //
    //Future<StoryScheme> addStoryContent(String storyId, { List<MultipartFile> images }) async
    test('test addStoryContent', () async {
      // TODO
    });

    // On Add Story Establishments
    //
    //Future<StoryScheme> addStoryEstablishments(String storyId, StoryAddEstablishmentScheme storyAddEstablishmentScheme) async
    test('test addStoryEstablishments', () async {
      // TODO
    });

    // On Add Story Image
    //
    //Future<StoryScheme> addStoryImage(String storyId, MultipartFile file) async
    test('test addStoryImage', () async {
      // TODO
    });

    // On Create Story
    //
    //Future<StoryScheme> createStory(CreateStoryScheme createStoryScheme) async
    test('test createStory', () async {
      // TODO
    });

    // On Delete Story Establishments
    //
    //Future<StoryScheme> deleteStoryEstablishments(String storyId, StoryDeleteEstablishmentScheme storyDeleteEstablishmentScheme) async
    test('test deleteStoryEstablishments', () async {
      // TODO
    });

    // On Get Stories By Establishment
    //
    //Future<List<StoryScheme>> getStoriesByEstablishment(String establishmentId) async
    test('test getStoriesByEstablishment', () async {
      // TODO
    });

    // On Get Stories By Organization
    //
    //Future<List<StoryScheme>> getStoriesByOrganization(String organizationId) async
    test('test getStoriesByOrganization', () async {
      // TODO
    });

    // On Update Story
    //
    //Future<StoryScheme> updateStory(String storyId, UpdateStoryScheme updateStoryScheme) async
    test('test updateStory', () async {
      // TODO
    });

  });
}
