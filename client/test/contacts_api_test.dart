import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for ContactsApi
void main() {
  final instance = DaamduuqrClient().getContactsApi();

  group(ContactsApi, () {
    // On Create Contact
    //
    //Future<ContactScheme> createContact(CreateContactScheme createContactScheme) async
    test('test createContact', () async {
      // TODO
    });

    // On Get Contact
    //
    //Future<ContactScheme> getContact(String contactId) async
    test('test getContact', () async {
      // TODO
    });

    // On Update Contact
    //
    //Future<ContactScheme> updateContact(String contactId, UpdateContactScheme updateContactScheme) async
    test('test updateContact', () async {
      // TODO
    });

  });
}
