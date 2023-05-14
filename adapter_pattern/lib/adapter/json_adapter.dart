import 'dart:convert';

import '../contact.dart';
import '../contact_reader.dart';
import 'icontacts_adapter.dart';

class JsonContactsAdapter implements IContactsAdapter {
  final JsonContactsReader _reader = JsonContactsReader();

  @override
  List<Contact> getContacts() {
    final contactsJson = _reader.getContactsJson();
    final contactsList = _parseContactsJson(contactsJson);

    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    final contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    final contactsJsonList = contactsMap['contacts'] as List;
    final contactsList = contactsJsonList.map((json) {
      final contactJson = json as Map<String, dynamic>;

      return Contact(
        fullName: contactJson['fullName'] as String,
        email: contactJson['email'] as String,
        friend: contactJson['friend'] as bool,
        phoneNumber: contactJson['phoneNumber'] as String,
      );
    }).toList();

    return contactsList;
  }
}
