class XmlContactsReader {
  final String _contactsXml = '''
  <?xml version="1.0"?>
  <contacts>
    <contact>
      <fullname>John Smith (XML)</fullname>
      <email>johns@xml.com</email>
      <friend>false</friend>
      <phoneNumber>999-999-9999</phoneNumber>
    </contact>
    <contact>
      <fullname>Elizabeth Smith (XML)</fullname>
      <email>elisabeths@xml.com</email>
      <friend>true</friend>
      <phoneNumber>999-999-9990</phoneNumber>
    </contact>
    <contact>
      <fullname>Sebastian Smith (XML)</fullname>
      <email>sebastians@xml.com</email>
      <friend>true</friend>
      <phoneNumber>999-999-8880</phoneNumber>
    </contact>
  </contacts>
  ''';

  String getContactsXml() {
    return _contactsXml;
  }
}

class JsonContactsReader {
  final String _contactsJson = '''
  {
    "contacts": [
      {
        "fullName": "John Smith (JSON)",
        "email": "johns@json.com",
        "friend": false
      },
      {
        "fullName": "Elizabeth Smith (JSON)",
        "email": "elizabeths@json.com",
        "friend": true
      },
      {
        "fullName": "Sebastian Smith (JSON)",
        "email": "sebastians@json.com",
        "friend": true
      }
    ]
  }
  ''';

  String getContactsJson() {
    return _contactsJson;
  }
}
