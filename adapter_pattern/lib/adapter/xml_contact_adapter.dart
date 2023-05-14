import '../contact.dart';
import '../contact_reader.dart';
import 'package:xml/xml.dart';

import 'icontacts_adapter.dart';

class XMLContactAdapter implements IContactsAdapter {
  final XmlContactsReader _reader = XmlContactsReader();
  @override
  List<Contact> getContacts() {
    final contactsXml = _reader.getContactsXml();
    final contactsList = _parseContactXml(contactsXml);

    return contactsList;
  }

  List<Contact> _parseContactXml(String contactsXml) {
    final xmlDocument = XmlDocument.parse(contactsXml);
    final contactsList = <Contact>[];

    for (var xmlElement in xmlDocument.findAllElements('contact')) {
      final fullName = xmlElement.findElements('fullname').single.text;
      final email = xmlElement.findElements('email').single.text;
      final favouriteString = xmlElement.findElements('friend').single.text;
      final friend = favouriteString.toLowerCase() == 'true';
      final phoneNumber = xmlElement.findElements('phoneNumber').single.text;

      contactsList.add(
        Contact(
          fullName: fullName,
          email: email,
          friend: friend,
          phoneNumber: phoneNumber,
        ),
      );
    }

    return contactsList;
  }
}
